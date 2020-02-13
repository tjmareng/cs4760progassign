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
    };

    function error() {
        outputLatLong.innerHTML = "Unable to retrieve your location";
    };

    outputLatLong.innerHTML = "<p>Locating…</p>";
    navigator.geolocation.getCurrentPosition(success, error);
}