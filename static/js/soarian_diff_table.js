const soarianConformanceURL = 'https://fhir-myrecord-sc.cerner.com/dstu2/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/metadata';
const soarianConformanceHeaders = { Accept: 'application/json+fhir' };

const soarianCapabilityStatementURL = 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/metadata';
const soarianCapabilityStatementHeaders = { Accept: 'application/fhir+json' };

// Configuration for resources that have been altered from DSTU2 to R4
const soarianResourceConfig = {
  combinedSoarianResources: [    
    {
      soarianDstu2Resources: ["Conformance"],
      soarianR4Resources: ["CapabilityStatement"],
      notes: "Cerner's Soarian DSTU 2 Conformance resource was renamed to CapabilityStatement in R4."
    },{
      soarianDstu2Resources: ["MedicationStatement"],
      soarianR4Resources: ["MedicationRequest"],
      notes: "Cerner's Soarian DSTU 2 implementations of MedicationStatement were shifted to MedicationRequest in R4."
    },    
    {
      soarianDstu2Resources: ["CarePlan"],
      soarianR4Resources: ["CarePlan", "CareTeam"],
      notes: "Cerner's Soarian DSTU 2 implementations of CarePlan was split into CarePlan and CareTeam in R4."
    }
  ]
};

/**
 * Retreives the configuration for a specific resource by its name.
 * @param {string} resourceName - The name of the resource to find.
 * @returns {array} Array of all Basic resource configurations.
 * @returns {object} The configuration object for the given resource.
 * @returns {null} No configuration exists for the given resource.
 */
function getSoarianConfiguration(resourceName) {
  
    let combinedSoarianResources = soarianResourceConfig.combinedSoarianResources;
    for (let i = 0; i < combinedSoarianResources.length; i++) {
      if (combinedSoarianResources[i].soarianDstu2Resources.includes(resourceName)) {
        return combinedSoarianResources[i];
      }
    }
  return null;
}

/**
 * Converts a given resource into a new object with the only resource's name and supported actions.
 * @param {object} resourceObject - The object containing a resource's information.
 * @returns {object} The new resource object.
 */
function buildSoarianResource(resourceObject) {
  let supportedActions = resourceObject.interaction;
  return {
    resourceName: resourceObject.type,
    readSupported: supportedActions.filter(action => action.code == "read").length > 0,
    searchSupported: supportedActions.filter(action => action.code == "search-type").length > 0
  };
}

/**
 * Creates an object of matching DSTU2 and R4 resources.
 * @param {object} resource - A DSTU2 resource object.
 * @param {array} resourceArray - The array of R4 resources objects.
 * @returns {object} Contains arrays of DSTU2 and R4 resources that match.
 * @returns {object} Contains an array of only DSTU2 resources if no R4 matches are found.
 */
function buildSoarianMatch(resource, resourceArray) {
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
      soarianDstu2Resources: [buildSoarianResource(resource)],
      soarianR4Resources: [buildSoarianResource(matchingResource)]
    };
  }
  else {
    return { soarianDstu2Resources: [buildSoarianResource(resource)] };
  }
}

/**
 * Creates an object of matching Soarian DSTU2 and R4 resources that require special configuration.
 * @param {object} config - The configuration object from soarianResourceConfig.
 * @param {array} soarianDstu2Resources - The array of Soarian DSTU2 resource objects.
 * @param {array} soarianR4Resources - The array of Soarian R4 resource objects.
 * @returns {object} Contains arrays of Soarian DSTU2 and R4 resources that match.
 */
function buildMatchFromSoarianConfig(config, soarianDstu2Resources, soarianR4Resources) {
  let configuredResource = {
    soarianDstu2Resources: [],
    soarianR4Resources: [],
  };

  // Find the DSTU2 resources in the config
  for (let i = 0; i < config.soarianDstu2Resources.length; i++) {
    for (let j = 0; j < soarianDstu2Resources.length; j++) {
      if (soarianDstu2Resources[j] != null) {
        if (soarianDstu2Resources[j].type === config.soarianDstu2Resources[i]) {
          configuredResource.soarianDstu2Resources.push(buildSoarianResource(soarianDstu2Resources[j]));
          delete soarianDstu2Resources[j];
        }
      }
    }
  }
  
  // Find the R4 resources in the config
  for (let i = 0; i < config.soarianR4Resources.length; i++) {
    for (let j = 0; j < soarianR4Resources.length; j++) {
      if (soarianR4Resources[j] != null) {
		 if (soarianR4Resources[j].type === config.soarianR4Resources[i]) {
			configuredResource.soarianR4Resources.push(buildSoarianResource(soarianR4Resources[j]));
          delete soarianR4Resources[j];
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
 * Matches each Soarian DSTU2 resource to a R4 resource using either a configuration or by name.
 * If no configuration exists for the Soarian DSTU2 resource and no match can be found, it is pushed by itself.
 * @param {array} soarianDstu2Resources - The array of Soarian DSTU2 resources from metadata.
 * @param {array} soarianR4Resources - The array of Soarian R4 resources from metadata.
 * @returns {array} Array of matches.
 */
function matchSoarianDstu2Resources(soarianDstu2Resources, soarianR4Resources) {
  let matches = [];
  for (let i = 0; i < soarianDstu2Resources.length; i++) {
    let currentResource = soarianDstu2Resources[i];

    if (currentResource != null) {
      let config = getSoarianConfiguration(currentResource.type);
      let match = null;

      if (config != null) {
        match = buildMatchFromSoarianConfig(config, soarianDstu2Resources, soarianR4Resources);
        matches.push(match);
      }
      else {
        match = buildSoarianMatch(currentResource, soarianR4Resources);
        matches.push(match);
      }
    }
  }

  return matches;
}

/**
 * Returns the remaining R4 resources that have no DSTU2 counterpart.
 * Resources that are extended from Basic are returned from the configuration.
 * @param {array} soarianR4Resources - The array of R4 resources from metadata.
 * @returns {array} Array of R4 resources.
 */
function getUnmatchedSoarianResources(soarianR4Resources) {
  let resources = [];

  for (let i = 0; i < soarianR4Resources.length; i++) {
    let currentResource = soarianR4Resources[i];
	

    if (currentResource != null) {
      let config = getSoarianConfiguration(currentResource.type)
	       if (config != null) {
        // Build and push all resources extended from the Basic resource
        for (let j = 0; j < config.length; j++) {
          resources.push({
            soarianR4Resources: [buildSoarianResource(config[j])],
            notes: config[j].notes
          });
        }
      }
      resources.push({ soarianR4Resources: [buildSoarianResource(currentResource)] });
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
function matchSoarianResources(conformanceData, capabilityStatementData) {
  let soarianDstu2Resources = conformanceData.rest[0].resource;
  let soarianR4Resources = capabilityStatementData.rest[0].resource;
  
	soarianDstu2Resources.push({"type": "Conformance","interaction": [
            {
              "code": "read"
            }
          ]
        });
		
		soarianR4Resources.push({"type": "CapabilityStatement","interaction": [
            {
              "code": "read"
            }
          ]
        });
  
  // Match all DSTU2 Resources
  let dstu2Matches = matchSoarianDstu2Resources(soarianDstu2Resources, soarianR4Resources);
  // Get the remaining R4 resources that have no DSTU2 counterpart
  let unmatchedR4Resources = getUnmatchedSoarianResources(soarianR4Resources);
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
function mergeSoarianSortedArrays(includesR4, dstu2Only) {

  let result = [];
  let includesR4Length = includesR4.length;
  for(let x = 0; x < includesR4Length; x += 1) {
    let r4Record = includesR4[x];
    for (let y = 0; y < dstu2Only.length; y += 1) {
      if (r4Record.soarianR4Resources[0].resourceName > dstu2Only[y].soarianDstu2Resources[0].resourceName) {
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
function sortSoarianMatchedResources(resourceArray) {
  let matchingResources = [];
  let includesR4 = [];
  let dstu2Only = [];

  // Split the resources between those that have R4 resources and those that are only in DSTU2
  for (let i = 0; i < resourceArray.length; i++) {
    if (resourceArray[i].hasOwnProperty('soarianR4Resources')) {
      includesR4.push(resourceArray[i]);
    }
    else {
      dstu2Only.push(resourceArray[i]);
    }
  }
    
  includesR4.sort(function(a, b) {
	   let resourceA = a.soarianR4Resources[0].resourceName.toLowerCase();
	  let resourceB = b.soarianR4Resources[0].resourceName.toLowerCase();
    return (resourceA < resourceB) ? -1 : (resourceA > resourceB) ? 1 : 0;
  });
  
  dstu2Only.sort(function(a, b) {
    let resourceA = a.soarianDstu2Resources[0].resourceName.toLowerCase();
    let resourceB = b.soarianDstu2Resources[0].resourceName.toLowerCase();
    return (resourceA < resourceB) ? -1 : (resourceA > resourceB) ? 1 : 0;
  });
  matchingResources = mergeSoarianSortedArrays(includesR4, dstu2Only);
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
function getSoarianActionIcon(resourceName, version, action, iconName, title) {
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
function getSoarianSupportedActions(resource, version) {
  let supportedActions = [];
  let icons = {
    read: 'octicon octicon-file-text',
    search: 'octicon octicon-search'
  }

  // Build a td for each action and icon and add it to the array.
  supportedActions.push(getSoarianActionIcon(resource.resourceName, version, resource.readSupported, icons.read, 'read'));
  supportedActions.push(getSoarianActionIcon(resource.resourceName, version, resource.searchSupported, icons.search, 'search'));

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
function createSoarianResourceRow(resource, version, rowSpan = 1, notes = null) {
  let tableData = document.createElement('td');
  tableData.appendChild(document.createTextNode(resource.resourceName));
  tableData.className = 'resource-name';
  tableData.rowSpan = rowSpan;

  if (notes != null && notes != "") {
    let noteElement = document.createElement('span');
    noteElement.dataset.tooltip = notes;
    noteElement.appendChild(document.createTextNode('*'));
    tableData.appendChild(noteElement);
  }

  let resourceRow = [tableData];
  let supportedActions = getSoarianSupportedActions(resource, version);
  for (let i = 0; i < supportedActions.length; i++) {
    supportedActions[i].rowSpan = rowSpan;
    resourceRow.push(supportedActions[i]);
  }

  return resourceRow;
}

/**
 * Spans an R4 resource to align with the DSTU2 resources that match it.
 * @param {array} soarianDstu2Resources - The array of DSTU2 resources.
 * @param {array} soarianR4Resources - The array of R4 resources.
 * @param {string} notes - Notes to be displayed on the resource in the table.
 */
function spanSoarianR4WithDstu2(soarianDstu2Resources, soarianR4Resources, notes) {
  let table = document.getElementById('soarian-diff-table');
  let tableBody = document.createElement('tbody');
  table.appendChild(tableBody);

  let rowSpan = soarianDstu2Resources.length;

  // Create rows for each DSTU2 resource.
  for (let i = 0; i < soarianDstu2Resources.length; i++) {
    let tableRow = document.createElement('tr');
    tableBody.appendChild(tableRow);

    let dstu2ResourceInfo = createSoarianResourceRow(soarianDstu2Resources[i], 'DSTU 2', 1, notes);
    for (let j = 0; j < dstu2ResourceInfo.length; j++) {
      tableRow.appendChild(dstu2ResourceInfo[j]);
    }
  }

  // Add the R4 resource to the first DSTU2 row that is created and span it
  let tableRow = tableBody.childNodes[tableBody.childNodes.length-rowSpan];
  let r4ResourceInfo = createSoarianResourceRow(soarianR4Resources[0], 'R4', rowSpan, notes);
  for (let i = 0; i < r4ResourceInfo.length; i++) {
    tableRow.appendChild(r4ResourceInfo[i]);
  }
}

/**
 * Spans a DSTU2 resource to align with the R4 resources that match it.
 * @param {array} soarianDstu2Resources  - The array of DSTU2 resources.
 * @param {array} soarianR4Resources - The array of R4 resources.
 * @param {string} notes - Notes to be displayed on the resource in the table.
 */
function spanSoarianDstu2WithR4(soarianDstu2Resources, soarianR4Resources, notes) {
  let table = document.getElementById('soarian-diff-table');
  let tableBody = document.createElement('tbody');
  table.appendChild(tableBody);

  let rowSpan = soarianR4Resources.length;
  let tableRow = document.createElement('tr');
  tableBody.appendChild(tableRow);

  // Create the row for the DSTU2 resource and span it
  // Add the first R4 resource to this row
  let dstu2ResourceInfo = createSoarianResourceRow(soarianDstu2Resources[0], 'DSTU 2', rowSpan, notes);
  let r4ResourceInfo = createSoarianResourceRow(soarianR4Resources[0], 'R4', 1, notes);
  for (let i = 0; i < dstu2ResourceInfo.length; i++) {
    tableRow.appendChild(dstu2ResourceInfo[i]);
  }
  for (let i = 0; i < r4ResourceInfo.length; i++) {
    tableRow.appendChild(r4ResourceInfo[i]);
  }

  // Create rows for the remaining R4 resources
  for (let i = 1; i < soarianR4Resources.length; i++) {
    let tableRow = document.createElement('tr');
    tableBody.appendChild(tableRow);

    let r4ResourceInfo = createSoarianResourceRow(soarianR4Resources[i], 'R4', 1, notes);
    for (let j = 0; j < r4ResourceInfo.length; j++) {
      tableRow.appendChild(r4ResourceInfo[j]);
    }
  }
}

/**
 * Adds resources to the table that have a single DSTU2 resource and a single matching R4 resource.
 * @param {array} soarianDstu2Resources - The array of DSTU2 resources.
 * @param {array} soarianR4Resources - The array of R4 resources.
 */
function alignSoarianSingleResources(soarianDstu2Resources, soarianR4Resources, notes) {
  let table = document.getElementById('soarian-diff-table');
  let tableBody = document.createElement('tbody');
  table.appendChild(tableBody);

  let tableRow = document.createElement('tr');
  tableBody.appendChild(tableRow);

  let dstu2ResourceInfo = createSoarianResourceRow(soarianDstu2Resources[0], 'DSTU 2', 1, notes);
  let r4ResourceInfo = createSoarianResourceRow(soarianR4Resources[0], 'R4', 1, notes);
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
function alignSoarianRows(matchedResourcesObj) {
  let soarianDstu2Resources = matchedResourcesObj.soarianDstu2Resources;
  let soarianR4Resources = matchedResourcesObj.soarianR4Resources;
  let notes = matchedResourcesObj.notes;

  if (soarianDstu2Resources.length > 1) {
    spanSoarianR4WithDstu2(soarianDstu2Resources, soarianR4Resources, notes);
  }
  else if (soarianR4Resources.length > 1) {
    spanSoarianDstu2WithR4(soarianDstu2Resources, soarianR4Resources, notes);
  }
  else {
    alignSoarianSingleResources(soarianDstu2Resources, soarianR4Resources, notes);
  }
}

/**
 * Generates the table using the object of matching resources.
 * @param {object} resourcesObject - The object containing the array of matching resource objects.
 */
function generateSoarianTable(resourcesObject) {
  let table = document.getElementById('soarian-diff-table');

  for (let i = 0; i < resourcesObject.matchingResources.length; i++) {
    if (resourcesObject.matchingResources[i].hasOwnProperty('soarianDstu2Resources')) {
      // The current resource has a match and needs to be aligned
      if (resourcesObject.matchingResources[i].hasOwnProperty('soarianR4Resources')) {
        alignSoarianRows(resourcesObject.matchingResources[i]);
      }
      // The current resource has no R4 counterpart and needs an empty cell to fill the space
      else {
        let tableBody = document.createElement('tbody');
        table.appendChild(tableBody);

        let dstu2Resource = resourcesObject.matchingResources[i].soarianDstu2Resources[0];
        let tableRow = document.createElement('tr');
        tableBody.appendChild(tableRow);

        let dstu2ResourceInfo = createSoarianResourceRow(dstu2Resource, 'DSTU 2');
        for (let j = 0; j < dstu2ResourceInfo.length; j++) {
          tableRow.appendChild(dstu2ResourceInfo[j]);
        }

        let emptyRow = document.createElement('td');
        emptyRow.colSpan = 3;
        tableRow.appendChild(emptyRow);
      }
    }
    // The current resource has no DSTU2 counterpart and needs an empty cell to fill the space
    else {
      let tableBody = document.createElement('tbody');
      table.appendChild(tableBody);

      let r4Resource = resourcesObject.matchingResources[i].soarianR4Resources[0];
      let notes = resourcesObject.matchingResources[i].notes;
      let tableRow = document.createElement('tr');
      tableBody.appendChild(tableRow);

      let emptyRow = document.createElement('td');
      emptyRow.colSpan = 3;
      tableRow.appendChild(emptyRow);

      let r4ResourceInfo = createSoarianResourceRow(r4Resource, 'R4', 1, notes)
      for (let k = 0; k < r4ResourceInfo.length; k++) {
        tableRow.appendChild(r4ResourceInfo[k]);
      }
    }
  }
}

/**
 * Hides the loading spinner and displays the failure message.
 */
function showTableSoarianFailureMessage() {
  document.getElementById('soarian-diff-table-spinner').classList.toggle('hide');
  document.getElementsByClassName('soarian-failure-message')[0].classList.toggle('hide');
}

/**
 * Displays the table.
 * If an error occurs during the process, an error message is displayed instead.
 */
function displaySoarianOverviewTable() {
  document.getElementById('soarian-table-div').classList.toggle('hide');
  document.getElementsByClassName('soarian-failure-message')[0].classList.toggle('hide');

  fetchData(soarianConformanceURL, soarianConformanceHeaders, true, function(dstu2Response) {
    fetchData(soarianCapabilityStatementURL, soarianCapabilityStatementHeaders, true, function(r4Response) {
      let tableResources = sortSoarianMatchedResources(matchSoarianResources(dstu2Response, r4Response));

      generateSoarianTable(tableResources);
      document.getElementById('soarian-diff-table-spinner').classList.toggle('hide')
      document.getElementById('soarian-table-div').classList.toggle('hide');
    }, showTableSoarianFailureMessage);
  }, showTableSoarianFailureMessage);
}
