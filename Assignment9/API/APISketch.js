//url
var url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson"

//container for results
var results;

//boolean to ensure we have data
var loaded = false;

//
function preload(){
    //load earthquake data
    results = loadJSON(url)
    console.log(results);
}
function setup(){
    //canvas paramters
    createCanvas(800, 600);
    background(47,179,169);
    //Title Text
    textSize(40);
    textAlign(CENTER);
    text("All Live Earthquakes",width/2,40)
    
    //for loop to go through all the results

    for (var i = 0; i < results.features.length; i++){
        //variables to store: longitiude, latitude, mapped x, mapped y
        var longitude = results.features[i].geometry.coordinates[0]
        var latitude = results.features[i].geometry.coordinates[1]
        var x = map(longitude,-180,180,0,width)
        var y = map(latitude,-90,90,0,height)
        //variable to store the magnitude of the earthquakes
        var mag = results.features[i].properties.mag
        fill(179,26,18);
        //multiple radius by magnitude to show scale of earthquake
        ellipse(x,y,30*mag);
    } 
    
}
