// Initialize the map and set its view to India
var map = L.map('map').setView([20.5937, 78.9629], 5); // India's center coordinates

// Add a tile layer (the background map)
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// Function to process CSV data and generate heatmap and markers
function generateHeatmap(data) {
    var heatData = [];

    data.forEach(function(row) {
        var lat = parseFloat(row['Latitude']);  // Ensure these match your CSV headers
        var lon = parseFloat(row['Longitude']); // Ensure these match your CSV headers
        var count = parseFloat(row['Count']);
        var state = row['ShipState']; // Updated to use 'ShipState'
        var state = row['ShipState'] ? row['ShipState'].trim() : ''; // Trim spaces

        if (!isNaN(lat) && !isNaN(lon) && !isNaN(count) && !isNaN(state)) {
            // Add data to heatmap array
            heatData.push([lat, lon, count]);   

            // Add marker for each location with a popup showing ShipState and Count
            var marker = L.marker([lat, lon]).addTo(map);
            marker.bindPopup(`<b>${state}</b><br>Count: ${count}`).openPopup(); // Use backticks for template literals
}});

    // Create the heatmap layer
    L.heatLayer(heatData, {
        radius: 100,
        blur: 15,
        maxZoom: 17,
    }).addTo(map);
}

// Fetch and parse the CSV file using Papa Parse
Papa.parse("Visual_Data/state_order_counts.csv", {
    download: true,
    header: true,
    complete: function(results) {
        generateHeatmap(results.data);
    }
});