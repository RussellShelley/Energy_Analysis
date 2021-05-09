var stations = "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key={station_api}"

function init() {
    // Grab a reference to the dropdown select element
    var selector = d3.select("#selDataset");
  
    // Use the list of sample names to populate the select options
    d3.json(stations).then((data) => {
      var zipCodes = data.zip;
  
      zipCodes.forEach((code) => {
        selector
          .append("option")
          .text(code)
          .property("value", code);
      });
  
      // Use the first sample from the list to build the initial plots
      var firstZip = zipCodes[0];
      buildMetadata(firstZip);
    });
  }
  
  // Initialize the dashboard
  init();
  
  function optionChanged(newZip) {
    // Fetch new data each time a new sample is selected
    buildMetadata(newZip);
   
  }
  
  // Demographics Panel 
  function buildMetadata(sample) {
    d3.json(stations).then((data) => {
      var metadata = data.metadata;
      // Filter the data for the object with the desired sample number
      var resultArray = metadata.filter(sampleObj => sampleObj.id == sample);
      var result = resultArray[0];
      // Use d3 to select the panel with id of `#sample-metadata`
      var PANEL = d3.select("#sample-metadata");
  
      // Use `.html("") to clear any existing metadata
      PANEL.html("");
  
      // Use `Object.entries` to add each key and value pair to the panel
      // Hint: Inside the loop, you will need to use d3 to append new
      // tags for each key-value in the metadata.
      Object.entries(result).forEach(([key, value]) => {
        PANEL.append("h6").text(`${key.toUpperCase()}: ${value}`);
      });
  
    });
  }