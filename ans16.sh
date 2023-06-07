echo -n "Enter the distance between two cities (in km): "
read distance_km

distance_m=$distance_km * 1000
distance_feet=$distance_km * 3280.84
distance_inches=$distance_km * 39370.1
distance_cm=$distance_km * 100000

echo "Distance in meters: $distance_m"
echo "Distance in feet: $distance_feet"
echo "Distance in inches: $distance_inches"
echo "Distance in centimeters: $distance_cm"
