/**
 * Retreives the configuration for a specific resource by its name.
 * @param {string} resourceName - The name of the resource to find.
 * @returns {array} Array of all Basic resource configurations.
 * @returns {object} The configuration object for the given resource.
 * @returns {null} No configuration exists for the given resource.
 */
function getConfiguration(resourceName) {
  if (resourceName === "Basic") {
    return config.resourceConfig.basicResources;
  }
  else {
    let combinedResources = config.resourceConfig.combinedResources;
    for (let i = 0; i < combinedResources.length; i++) {
      if (combinedResources[i].dstu2Resources.includes(resourceName)) {
        return combinedResources[i];
      }
    }
  }
  return null;
}

/**
 * Converts a given resource into a new object with the only resource's name and supported actions.
 * @param {object} resourceObject - The object containing a resource's information.
 * @returns {object} The new resource object.
 */
function buildResource(resourceObject) {
  let supportedActions = resourceObject.interaction;

  return {
    resourceName: resourceObject.type,
    readSupported: supportedActions.filter(action => action.code == "read").length > 0,
    searchSupported: supportedActions.filter(action => action.code == "search-type").length > 0,
    createSupported: supportedActions.filter(action => action.code == "create").length > 0,
    updateSupported: supportedActions.filter(action => action.code == "update").length > 0,
    patchSupported: supportedActions.filter(action => action.code == "patch").length > 0,
    deleteSupported: supportedActions.filter(action => action.code == "delete").length > 0
  };
}

/**
 * Creates an object of matching DSTU2 and R4 resources.
 * @param {object} resource - A DSTU2 resource object.
 * @param {array} resourceArray - The array of R4 resources objects.
 * @returns {object} Contains arrays of DSTU2 and R4 resources that match.
 * @returns {object} Contains an array of only DSTU2 resources if no R4 matches are found.
 */
function buildMatch(resource, resourceArray) {
  let matchingResource = null;

  for (let i = 0; i < resourceArray.length; i++) {
    if (resourceArray[i] != null) {
      if (resourceArray[i].type === resource.type) {
        matchingResource = resourceArray[i];
        delete resourceArray[i];
      }
    }
  }

  if (matchingResource != null) {
    return {
      dstu2Resources: [buildResource(resource)],
      r4Resources: [buildResource(matchingResource)]
    };
  }
  else {
    return { dstu2Resources: [buildResource(resource)] };
  }
}

/**
 * Creates an object of matching DSTU2 and R4 resources that require special configuration.
 * @param {object} config - The configuration object from config.resourceConfig.
 * @param {array} dstu2Resources - The array of DSTU2 resource objects.
 * @param {array} r4Resources - The array of R4 resource objects.
 * @returns {object} Contains arrays of DSTU2 and R4 resources that match.
 */
function buildMatchFromConfig(config, dstu2Resources, r4Resources) {
  let configuredResource = {
    dstu2Resources: [],
    r4Resources: [],
  };

  // Find the DSTU2 resources in the config
  for (let i = 0; i < config.dstu2Resources.length; i++) {
    for (let j = 0; j < dstu2Resources.length; j++) {
      if (dstu2Resources[j] != null) {
        if (dstu2Resources[j].type === config.dstu2Resources[i]) {
          configuredResource.dstu2Resources.push(buildResource(dstu2Resources[j]));
          delete dstu2Resources[j];
        }
      }
    }
  }

  // Find the R4 resources in the config
  for (let i = 0; i < config.r4Resources.length; i++) {
    for (let j = 0; j < r4Resources.length; j++) {
      if (r4Resources[j] != null) {
        if (r4Resources[j].type === config.r4Resources[i]) {
          configuredResource.r4Resources.push(buildResource(r4Resources[j]));
          delete r4Resources[j];
        }
      }
    }
  }

  if (config.hasOwnProperty('notes')) {
    configuredResource.notes = config.notes;
  }

  return configuredResource;
}
/**
 * Matches each DSTU2 resource to a R4 resource using either a configuration or by name.
 * If no configuration exists for the DSTU2 resource and no match can be found, it is pushed by itself.
 * @param {array} dstu2Resources - The array of DSTU2 resources from metadata.
 * @param {array} r4Resources - The array of R4 resources from metadata.
 * @returns {array} Array of matches.
 */
function matchDstu2Resources(dstu2Resources, r4Resources) {
  let matches = [];

  for (let i = 0; i < dstu2Resources.length; i++) {
    let currentResource = dstu2Resources[i];

    if (currentResource != null) {
      let config = getConfiguration(currentResource.type);
      let match = null;

      if (config != null) {
        match = buildMatchFromConfig(config, dstu2Resources, r4Resources);
        matches.push(match);
      }
      else {
        match = buildMatch(currentResource, r4Resources);
        matches.push(match);
      }
    }
  }

  return matches;
}

/**
 * Returns the remaining R4 resources that have no DSTU2 counterpart.
 * Resources that are extended from Basic are returned from the configuration.
 * @param {array} r4Resources - The array of R4 resources from metadata.
 * @returns {array} Array of R4 resources.
 */
function getUnmatchedResources(r4Resources) {
  let resources = [];

  for (let i = 0; i < r4Resources.length; i++) {
    let currentResource = r4Resources[i];

    if (currentResource != null) {
      let config = getConfiguration(currentResource.type)

      if (config != null) {
        // Build and push all resources extended from the Basic resource
        for (let j = 0; j < config.length; j++) {
          resources.push({
            r4Resources: [buildResource(config[j])],
            notes: config[j].notes
          });
        }
      }
      resources.push({ r4Resources: [buildResource(currentResource)] });
    }
  }

  return resources;
}

/**
 * Matches the resources between DSTU2 and R4 by first searching for a match for each DSTU2 resource.
 * Unmatched DSTU2 resources are pushed by themselves.
 * The remaining R4 resources that are not matched with any DSTU2 resource are pushed last.
 * @param {object} conformanceData - The DSTU2 metadata.
 * @param {object} capabilityStatementData - The R4 metadata.
 * @returns {array} Array of all matching resource objects.
 */
function matchResources(conformanceData, capabilityStatementData) {
  let dstu2Resources = conformanceData.rest[0].resource;
  let r4Resources = capabilityStatementData.rest[0].resource;

  // Match all DSTU2 Resources
  let dstu2Matches = matchDstu2Resources(dstu2Resources, r4Resources);

  // Get the remaining R4 resources that have no DSTU2 counterpart
  let unmatchedR4Resources = getUnmatchedResources(r4Resources);

  let matchingResources = dstu2Matches.concat(unmatchedR4Resources);
  return matchingResources;
}

/**
 * Merges the two sorted arrays alphabetically. Entries are ordered by their R4 name first, if no R4 resource
 * exists then the DSTU2 is used.
 * @param {array} includesR4 - The array of resource objects that contain R4 resources.
 * @param {array} dstu2Only - The array of resource objects that only contain DSTU2 resources.
 * @returns {array} The resultant array after merging.
 */
function mergeSortedArrays(includesR4, dstu2Only) {
  let result = [];
  let includesR4Length = includesR4.length;

  for(let x = 0; x < includesR4Length; x += 1) {
    let r4Record = includesR4[x];

    for (let y = 0; y < dstu2Only.length; y += 1) {
      if (r4Record.r4Resources[0].resourceName > dstu2Only[y].dstu2Resources[0].resourceName) {
        result.push(dstu2Only[y]);
        dstu2Only.splice(y, 1);
        y -= 1;
      }
    }

    result.push(r4Record);
  }

  return result;
}

/**
 * Sorts the matching resources alphabetically with precedence given to R4.
 * @param {array} resourceArray - The array of matching resources.
 * @returns {object} Contains the array of matching resources.
 */
function sortMatchedResources(resourceArray) {
  let matchingResources = [];
  let includesR4 = [];
  let dstu2Only = [];

  // Split the resources between those that have R4 resources and those that are only in DSTU2
  for (let i = 0; i < resourceArray.length; i++) {
    if (resourceArray[i].hasOwnProperty('r4Resources')) {
      includesR4.push(resourceArray[i]);
    }
    else {
      dstu2Only.push(resourceArray[i]);
    }
  }

  includesR4.sort(function(a, b) {
    let resourceA = a.r4Resources[0].resourceName.toLowerCase();
    let resourceB = b.r4Resources[0].resourceName.toLowerCase();
    return (resourceA < resourceB) ? -1 : (resourceA > resourceB) ? 1 : 0;
  });

  dstu2Only.sort(function(a, b) {
    let resourceA = a.dstu2Resources[0].resourceName.toLowerCase();
    let resourceB = b.dstu2Resources[0].resourceName.toLowerCase();
    return (resourceA < resourceB) ? -1 : (resourceA > resourceB) ? 1 : 0;
  });

  matchingResources = mergeSortedArrays(includesR4, dstu2Only);
  return { matchingResources: matchingResources };
}

/**
 * Creates a td element containing the corresponding icon and alt text for an action if it is supported.
 * @param {string} resourceName - The name of the resource.
 * @param {string} version - The API version of the given resource.
 * @param {bool} action - An action from the resource object.
 * @param {string} iconName - The class name of the icon to be displayed for the action.
 * @param {string} title - The title to be set for the given icon.
 * @returns {HTMLElement} - The created td.
 */
function getActionIcon(resourceName, version, action, iconName, title) {
  let tableData = document.createElement('td');
  tableData.className = 'icon';
  if (action) {
    let icon = document.createElement('i');
    icon.title = title;
    icon.className = iconName;
    icon.setAttribute('aria-hidden','true');

    let altText = document.createElement('span');
    altText.className = 'hide';
    altText.innerText = `${resourceName} ${title} is supported by ${version}.`;

    tableData.appendChild(icon);
    tableData.appendChild(altText);
  }
  else {
    tableData.appendChild(document.createTextNode(''));
  }
  return tableData;
}

/**
 * Creates an array of all the td elements for the actions of a given resource.
 * @param {object} resource - The resource object containing its supported actions.
 * @param {string} version - The API version of the given resource.
 * @returns {array} Array of the td elements.
 */
function getSupportedActions(resource, version) {
  let supportedActions = [];
  let icons = {
    read: 'octicon octicon-file-text',
    search: 'octicon octicon-search',
    create: 'octicon octicon-plus',
    update: 'octicon octicon-pencil',
    patch: 'octicon octicon-diff',
    delete: 'octicon octicon-trashcan'
  }

  // Build a td for each action and icon and add it to the array.
  supportedActions.push(getActionIcon(resource.resourceName, version, resource.readSupported, icons.read, 'read'));
  supportedActions.push(getActionIcon(resource.resourceName, version, resource.searchSupported, icons.search, 'search'));
  supportedActions.push(getActionIcon(resource.resourceName, version, resource.createSupported, icons.create, 'create'));
  supportedActions.push(getActionIcon(resource.resourceName, version, resource.updateSupported, icons.update, 'update'));
  supportedActions.push(getActionIcon(resource.resourceName, version, resource.patchSupported, icons.patch, 'patch'));
  supportedActions.push(getActionIcon(resource.resourceName, version, resource.deleteSupported, icons.delete, 'delete'));

  return supportedActions;
}

/**
 * Creates an array of a resource's td elements spanned to the specified rowspan.
 * If notes are supplied, a span element containing the notes is added after the resource's name.
 * @param {object} resource - The resource object.
 * @param {string} version - The API version of the given resource.
 * @param {number} [rowSpan = 1] - The number of rows the data should span.
 * @param {string} [notes = null] - Notes to be displayed on the resource in the table.
 * @returns {array} The resource's td elements.
 */
function createResourceRow(resource, version, rowSpan = 1, notes = null) {
  let versionKey = version.toLowerCase().replace(' ', '');
  let resourceUrl = config[versionKey]['documentationUrls'][resource.resourceName];
  let resourceLink;

  if (resourceUrl == null) {
    resourceLink = document.createTextNode(resource.resourceName);
  }
  else {
    resourceLink = document.createElement('a');
    resourceLink.appendChild(document.createTextNode(resource.resourceName));
    resourceLink.href = resourceUrl;
  }

  let tableData = document.createElement('td');
  tableData.appendChild(resourceLink);
  tableData.className = 'resource-name';
  tableData.rowSpan = rowSpan;

  if (notes != null && notes != "") {
    let noteElement = document.createElement('span');
    noteElement.dataset.tooltip = notes;
    noteElement.appendChild(document.createTextNode('*'));
    tableData.appendChild(noteElement);
  }

  let resourceRow = [tableData];
  let supportedActions = getSupportedActions(resource, version);
  for (let i = 0; i < supportedActions.length; i++) {
    supportedActions[i].rowSpan = rowSpan;
    resourceRow.push(supportedActions[i]);
  }

  return resourceRow;
}

/**
 * Spans an R4 resource to align with the DSTU2 resources that match it.
 * @param {array} dstu2Resources - The array of DSTU2 resources.
 * @param {array} r4Resources - The array of R4 resources.
 * @param {string} notes - Notes to be displayed on the resource in the table.
 */
function spanR4WithDstu2(dstu2Resources, r4Resources, notes) {
  let table = document.getElementById('millennium-diff-table');
  let tableBody = document.createElement('tbody');
  table.appendChild(tableBody);

  let rowSpan = dstu2Resources.length;

  // Create rows for each DSTU2 resource.
  for (let i = 0; i < dstu2Resources.length; i++) {
    let tableRow = document.createElement('tr');
    tableBody.appendChild(tableRow);

    let dstu2ResourceInfo = createResourceRow(dstu2Resources[i], 'DSTU 2', 1, notes);
    for (let j = 0; j < dstu2ResourceInfo.length; j++) {
      tableRow.appendChild(dstu2ResourceInfo[j]);
    }
  }

  // Add the R4 resource to the first DSTU2 row that is created and span it
  let tableRow = tableBody.childNodes[tableBody.childNodes.length-rowSpan];
  let r4ResourceInfo = createResourceRow(r4Resources[0], 'R4', rowSpan, notes);
  for (let i = 0; i < r4ResourceInfo.length; i++) {
    tableRow.appendChild(r4ResourceInfo[i]);
  }
}

/**
 * Spans a DSTU2 resource to align with the R4 resources that match it.
 * @param {array} dstu2Resources  - The array of DSTU2 resources.
 * @param {array} r4Resources - The array of R4 resources.
 * @param {string} notes - Notes to be displayed on the resource in the table.
 */
function spanDstu2WithR4(dstu2Resources, r4Resources, notes) {
  let table = document.getElementById('millennium-diff-table');
  let tableBody = document.createElement('tbody');
  table.appendChild(tableBody);

  let rowSpan = r4Resources.length;
  let tableRow = document.createElement('tr');
  tableBody.appendChild(tableRow);

  // Create the row for the DSTU2 resource and span it
  // Add the first R4 resource to this row
  let dstu2ResourceInfo = createResourceRow(dstu2Resources[0], 'DSTU 2', rowSpan, notes);
  let r4ResourceInfo = createResourceRow(r4Resources[0], 'R4', 1, notes);
  for (let i = 0; i < dstu2ResourceInfo.length; i++) {
    tableRow.appendChild(dstu2ResourceInfo[i]);
  }
  for (let i = 0; i < r4ResourceInfo.length; i++) {
    tableRow.appendChild(r4ResourceInfo[i]);
  }

  // Create rows for the remaining R4 resources
  for (let i = 1; i < r4Resources.length; i++) {
    let tableRow = document.createElement('tr');
    tableBody.appendChild(tableRow);

    let r4ResourceInfo = createResourceRow(r4Resources[i], 'R4', 1, notes);
    for (let j = 0; j < r4ResourceInfo.length; j++) {
      tableRow.appendChild(r4ResourceInfo[j]);
    }
  }
}

/**
 * Adds resources to the table that have a single DSTU2 resource and a single matching R4 resource.
 * @param {array} dstu2Resources - The array of DSTU2 resources.
 * @param {array} r4Resources - The array of R4 resources.
 */
function alignSingleResources(dstu2Resources, r4Resources, notes) {
  let table = document.getElementById('millennium-diff-table');
  let tableBody = document.createElement('tbody');
  table.appendChild(tableBody);

  let tableRow = document.createElement('tr');
  tableBody.appendChild(tableRow);

  let dstu2ResourceInfo = createResourceRow(dstu2Resources[0], 'DSTU 2', 1, notes);
  let r4ResourceInfo = createResourceRow(r4Resources[0], 'R4', 1, notes);
  for (let i = 0; i < dstu2ResourceInfo.length; i++) {
    tableRow.appendChild(dstu2ResourceInfo[i]);
  }
  for (let i = 0; i < r4ResourceInfo.length; i++) {
    tableRow.appendChild(r4ResourceInfo[i]);
  }
}

/**
 * Aligns the matching resources between DSTU2 and R4 for a given resource.
 * @param {object} matchedResourcesObj - The object containing the arrays of matching resources.
 */
function alignRows(matchedResourcesObj) {
  let dstu2Resources = matchedResourcesObj.dstu2Resources;
  let r4Resources = matchedResourcesObj.r4Resources;
  let notes = matchedResourcesObj.notes;

  if (dstu2Resources.length > 1) {
    spanR4WithDstu2(dstu2Resources, r4Resources, notes);
  }
  else if (r4Resources.length > 1) {
    spanDstu2WithR4(dstu2Resources, r4Resources, notes);
  }
  else {
    alignSingleResources(dstu2Resources, r4Resources, notes);
  }
}

/**
 * Generates the table using the object of matching resources.
 * @param {object} resourcesObject - The object containing the array of matching resource objects.
 */
function generateTable(resourcesObject) {
  let table = document.getElementById('millennium-diff-table');

  for (let i = 0; i < resourcesObject.matchingResources.length; i++) {
    if (resourcesObject.matchingResources[i].hasOwnProperty('dstu2Resources')) {
      // The current resource has a match and needs to be aligned
      if (resourcesObject.matchingResources[i].hasOwnProperty('r4Resources')) {
        alignRows(resourcesObject.matchingResources[i]);
      }
      // The current resource has no R4 counterpart and needs an empty cell to fill the space
      else {
        let tableBody = document.createElement('tbody');
        table.appendChild(tableBody);

        let dstu2Resource = resourcesObject.matchingResources[i].dstu2Resources[0];
        let tableRow = document.createElement('tr');
        tableBody.appendChild(tableRow);

        let dstu2ResourceInfo = createResourceRow(dstu2Resource, 'DSTU 2');
        for (let j = 0; j < dstu2ResourceInfo.length; j++) {
          tableRow.appendChild(dstu2ResourceInfo[j]);
        }

        let emptyRow = document.createElement('td');
        emptyRow.colSpan = 7;
        tableRow.appendChild(emptyRow);
      }
    }
    // The current resource has no DSTU2 counterpart and needs an empty cell to fill the space
    else {
      let tableBody = document.createElement('tbody');
      table.appendChild(tableBody);

      let r4Resource = resourcesObject.matchingResources[i].r4Resources[0];
      let notes = resourcesObject.matchingResources[i].notes;
      let tableRow = document.createElement('tr');
      tableBody.appendChild(tableRow);

      let emptyRow = document.createElement('td');
      emptyRow.colSpan = 7;
      tableRow.appendChild(emptyRow);

      let r4ResourceInfo = createResourceRow(r4Resource, 'R4', 1, notes)
      for (let k = 0; k < r4ResourceInfo.length; k++) {
        tableRow.appendChild(r4ResourceInfo[k]);
      }
    }
  }
}

/**
 * Hides the loading spinner and displays the failure message.
 */
function showTableFailureMessage() {
  document.getElementById('diff-table-spinner').classList.toggle('hide');
  document.getElementsByClassName('failure-message')[0].classList.toggle('hide');
}

/**
 * Displays the table.
 * If an error occurs during the process, an error message is displayed instead.
 */
function displayOverviewTable() {
  document.getElementById('millennium-table-div').classList.toggle('hide');
  document.getElementsByClassName('failure-message')[0].classList.toggle('hide');

  fetchData(config.dstu2.metadataUrl, config.dstu2.metadataHeaders, true, function(dstu2Response) {
    fetchData(config.r4.metadataUrl, config.r4.metadataHeaders, true, function(r4Response) {
      let tableResources = sortMatchedResources(matchResources(dstu2Response, r4Response));

      generateTable(tableResources);
      document.getElementById('diff-table-spinner').classList.toggle('hide')
      document.getElementById('millennium-table-div').classList.toggle('hide');
    }, showTableFailureMessage);
  }, showTableFailureMessage);
}
