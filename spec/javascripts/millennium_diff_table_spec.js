describe("millennium_diff_table.js", function() {
  describe("#getConfiguration", function() {
    describe("when the resource is Basic", function() {
      let config = [
        {
          type: "FinancialTransaction",
          interaction: [
            {
              code: "create"
            }
        ],
        notes: "FinancialTransaction is a custom resource implemented via extensions on the Basic resource."
        }
      ]

      it("returns the correct configuration for Basic", function() {
        expect(getConfiguration("Basic")).toEqual(config);
      });
    });

    describe("when the resource is not Basic", function() {
      let config = {
        dstu2Resources: ["MedicationOrder", "MedicationStatement"],
        r4Resources: ["MedicationRequest"],
        notes: "Cerner's DSTU 2 implementations of MedicationOrder and MedicationStatement were shifted to MedicationRequest in R4."
      }

      it("returns the correct configuration for the resource", function() {
        expect(getConfiguration("MedicationStatement")).toEqual(config);
      });
    });

    describe("when the resource does not have a configuration", function() {
      it("returns null", function() {
        expect(getConfiguration("AllergyIntolerance")).toEqual(null);
      });
    });
  });

  describe("#buildResource", function() {
    let resourceObject = {
      "type": "Device",
      "interaction": [
        {
          "code": "read"
        },
        {
          "code": "search-type"
        }
      ]
    };
    let expectedObject = {
      resourceName: "Device",
      readSupported: true,
      searchSupported: true,
      createSupported: false,
      updateSupported: false,
      patchSupported: false,
      deleteSupported: false
    };

    it("returns a new resource object with the correct name and supported actions", function() {
      expect(buildResource(resourceObject)).toEqual(expectedObject);
    });
  });

  describe("#buildMatch", function() {
    describe("when the DSTU2 resource has a match in R4", function() {
      let dstu2Resource = {
        "type": "Device",
        "interaction": [
          {
            "code": "read"
          },
          {
            "code": "search-type"
          }
        ]
      };
      let dstu2Object = {
        resourceName: "Device",
        readSupported: true,
        searchSupported: true,
        createSupported: false,
        updateSupported: false,
        patchSupported: false,
        deleteSupported: false
      };
      let r4Resources = [{
        "type": "Device",
        "interaction": [
          {
            "code": "read"
          },
          {
            "code": "search-type"
          }
        ]
      }];
      let r4Object = {
        resourceName: "Device",
        readSupported: true,
        searchSupported: true,
        createSupported: false,
        updateSupported: false,
        patchSupported: false,
        deleteSupported: false
      };

      beforeEach(function() {
        spyOn(window, "buildResource").and.returnValues(dstu2Object, r4Object);
      });

      it("returns a new object containing the arrays of matching resources", function() {
        let expectedObject = {
          dstu2Resources: [dstu2Object],
          r4Resources: [r4Object]
        };

        expect(buildMatch(dstu2Resource, r4Resources)).toEqual(expectedObject);
      });
    });

    describe("when the DSTU2 resource does not have a match in R4", function() {
      let dstu2Resource = {
        "type": "DiagnosticReport",
        "interaction": [
          {
            "code": "search-type"
          }
        ]
      };
      let dstu2Object = {
        resourceName: "DiagnosticReport",
        readSupported: false,
        searchSupported: true,
        createSupported: false,
        updateSupported: false,
        patchSupported: false,
        deleteSupported: false
      };
      let r4Resources = [];

      beforeEach(function() {
        spyOn(window, "buildResource").and.returnValue(dstu2Object);
      });

      it("returns a new object containing an array with the DSTU2 resource", function() {
        let expectedObject = {
          dstu2Resources: [dstu2Object]
        };

        expect(buildMatch(dstu2Resource, r4Resources)).toEqual(expectedObject);
      });
    });
  });

  describe("#buildMatchFromConfig", function() {
    let config = {
      dstu2Resources: ["CarePlan"],
      r4Resources: ["CarePlan", "CareTeam"],
      notes: "DSTU2 CarePlan was split into R4 CarePlan and CareTeam."
    }
    let dstu2Resources = [{
      "type": "CarePlan",
      "interaction": [
        {
          "code": "read"
        },
        {
          "code": "search-type"
        }
      ]
    },
    {
      "type": "Condition",
      "interaction": [
        {
            "code": "read"
        },
        {
            "code": "search-type"
        }
      ]
    }];
    let r4Resources = [
    {
      "type": "AllergyIntolerance",
      "interaction": [
        {
          "code": "read"
        },
        {
          "code": "search-type"
        }
      ]
    },
    {
      "type": "CarePlan",
      "interaction": [
        {
          "code": "read"
        },
        {
          "code": "search-type"
        }
      ]
    },
    {
      "type": "CareTeam",
      "interaction": [
        {
            "code": "read"
        },
        {
            "code": "search-type"
        }
      ]
    }];
    let dstu2Object = {
      resourceName: "CarePlan",
      readSupported: true,
      searchSupported: true,
      createSupported: false,
      updateSupported: false,
      patchSupported: false,
      deleteSupported: false
    };
    let r4Objects = [{
      resourceName: "CarePlan",
      readSupported: true,
      searchSupported: true,
      createSupported: false,
      updateSupported: false,
      patchSupported: false,
      deleteSupported: false
    },
    {
      resourceName: "CareTeam",
      readSupported: true,
      searchSupported: true,
      createSupported: false,
      updateSupported: false,
      patchSupported: false,
      deleteSupported: false
    }];

    beforeEach(function() {
      spyOn(window, "buildResource").and.returnValues(dstu2Object, r4Objects[0], r4Objects[1]);
    });

    it("returns a new object containing the arrays of matching resources", function() {
      let expectedObject = {
        dstu2Resources: [dstu2Object],
        r4Resources: r4Objects,
        notes: "DSTU2 CarePlan was split into R4 CarePlan and CareTeam."
      };

      expect(buildMatchFromConfig(config, dstu2Resources, r4Resources)).toEqual(expectedObject);
    });
  });
});
