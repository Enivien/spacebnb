import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';


autocomplete();

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
  const styles = [
    {
        "featureType": "all",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "saturation": "100"
            },
            {
                "color": "#ff00ac"
            },
            {
                "lightness": "23"
            },
            {
                "weight": "1"
            }
        ]
    },
    {
        "featureType": "all",
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#131313"
            },
            {
                "lightness": 16
            }
        ]
    },
    {
        "featureType": "all",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ff382e"
            },
            {
                "lightness": "22"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            },
            {
                "lightness": "10"
            },
            {
                "saturation": "90"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "color": "#2b2b2b"
            }
        ]
    },
    {
        "featureType": "administrative.country",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            }
        ]
    },
    {
        "featureType": "administrative.province",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            }
        ]
    },
    {
        "featureType": "administrative.locality",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            }
        ]
    },
    {
        "featureType": "administrative.neighborhood",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            }
        ]
    },
    {
        "featureType": "administrative.land_parcel",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry",
        "stylers": [
            {
                "lightness": 20
            },
            {
                "color": "#383838"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "-21"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "hue": "#ff0000"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#000000"
            },
            {
                "lightness": 21
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "-5"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ff382e"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "5"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "37"
            },
            {
                "visibility": "on"
            },
            {
                "color": "#ff00ac"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "lightness": "-53"
            },
            {
                "weight": 0.2
            }
        ]
    },
    {
        "featureType": "road.highway.controlled_access",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "100"
            },
            {
                "color": "#ff00ac"
            },
            {
                "saturation": "10"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#000000"
            },
            {
                "lightness": 18
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ff00ac"
            },
            {
                "lightness": "15"
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#ec523f"
            },
            {
                "lightness": 16
            }
        ]
    },
    {
        "featureType": "road.local",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ff00ac"
            },
            {
                "lightness": "25"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "geometry",
        "stylers": [
            {
                "lightness": 19
            },
            {
                "color": "#404040"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "14"
            }
        ]
    },
    {
        "featureType": "transit.line",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "-37"
            }
        ]
    },
    {
        "featureType": "transit.station.airport",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "lightness": "-5"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#000000"
            },
            {
                "lightness": 17
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#5e4aa5"
            }
        ]
    }
];

  map.addStyle({
    styles: styles,
    mapTypeId: 'map_style'
  });
  map.setStyle('map_style');
}


// function initMap() {
//   var map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: 0, lng: 0},
//     zoom: 1,
//     streetViewControl: false,
//     mapTypeControlOptions: {
//       mapTypeIds: ['moon']
//     }
//   });

//   var moonMapType = new google.maps.ImageMapType({
//     getTileUrl: function(coord, zoom) {
//         var normalizedCoord = getNormalizedCoord(coord, zoom);
//         if (!normalizedCoord) {

//           return null;
//         }
//         var bound = Math.pow(2, zoom);
//         return '//mw1.google.com/mw-planetary/lunar/lunarmaps_v1/clem_bw' +
//             '/' + zoom + '/' + normalizedCoord.x + '/' +
//             (bound - normalizedCoord.y - 1) + '.jpg';
//     },
//     tileSize: new google.maps.Size(256, 256),
//     maxZoom: 9,
//     minZoom: 0,
//     radius: 1738000,
//     name: 'moon'
//   });

//   map.mapTypes.set('moon', moonMapType);
//   map.setMapTypeId('moon');
// }

// // Normalizes the coords that tiles repeat across the x axis (horizontally)
// // like the standard Google map tiles.
// function getNormalizedCoord(coord, zoom) {
//   var y = coord.y;
//   var x = coord.x;

//   // tile range in one direction range is dependent on zoom level
//   // 0 = 1 tile, 1 = 2 tiles, 2 = 4 tiles, 3 = 8 tiles, etc
//   var tileRange = 1 << zoom;

//   // don't repeat across y-axis (vertically)
//   if (y < 0 || y >= tileRange) {
//     return null;
//   }

//   // repeat across x-axis
//   if (x < 0 || x >= tileRange) {
//     x = (x % tileRange + tileRange) % tileRange;
//   }

//   return {x: x, y: y};
// }
