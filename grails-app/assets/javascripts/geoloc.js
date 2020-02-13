function geoFindMe() {
    var outputLatLong = document.getElementById("latlong-out");

    if (!navigator.geolocation) {
        outputLatLong.innerHTML = "<p>Geolocation is not supported by your browser</p>";
        return;
    }

    function success(position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;

        outputLatLong.innerHTML = '<p>Latitude is ' + latitude + '° <br>Longitude is ' + longitude + '°</p>';

        // Add map
        var mymap = L.map('mapid').setView([latitude, longitude], 13);

        var tileURL = 'https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png'
        var attribution = 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors'
        var maxZoom = 17

        L.tileLayer(tileURL, {
            attribution: attribution,
            maxZoom: maxZoom
        }).addTo(mymap);
// end add map
    };

    function error() {
        outputLatLong.innerHTML = "Unable to retrieve your location";
    };

    outputLatLong.innerHTML = "<p>Locating…</p>";
    navigator.geolocation.getCurrentPosition(success, error);
}