require 'spec_helper'

describe GoogleMaps do

  # let!(:known_good) {{ "routes" => [ [0] { "bounds" => { "northeast" => { "lat" => 37.7922708, "lng" => -122.4014483 }, "southwest" => { "lat" => 37.7887278, "lng" => -122.4059204 } }, "copyrights" => "Map data ©2014 Google, Sanborn", "legs" => [ [0] { "distance" => { "text" => "0.5 mi", "value" => 787 }, "duration" => { "text" => "9 mins", "value" => 557 }, "end_address" => "Montgomery St., San Francisco, CA 94104, USA", "end_location" => { "lat" => 37.7892536, "lng" => -122.4014483 }, "start_address" => "717 California Street, San Francisco, CA 94108, USA", "start_location" => { "lat" => 37.7922708, "lng" => -122.4059204 }, "steps" => [ [0] { "distance" => { "text" => "0.2 mi", "value" => 398 }, "duration" => { "text" => "5 mins", "value" => 279 }, "end_location" => { "lat" => 37.7887278, "lng" => -122.4052826 }, "html_instructions" => "Head <b>south</b> on <b>Grant Ave</b> toward <b>Vinton Ct</b>", "polyline" => { "points" => "uhteF~kbjV|AQv@IfAKxBSrAM`BQbAKZEh@Ij@G" }, "start_location" => { "lat" => 37.7922708, "lng" => -122.4059204 }, "travel_mode" => "WALKING" }, [1] { "distance" => { "text" => "0.2 mi", "value" => 288 }, "duration" => { "text" => "3 mins", "value" => 202 }, "end_location" => { "lat" => 37.7891114, "lng" => -122.4020365 }, "html_instructions" => "Turn <b>left</b> onto <b>Post St</b>", "maneuver" => "turn-left", "polyline" => { "points" => "qrseF~gbjVUsDOeCQuCASGs@E}@Cq@" }, "start_location" => { "lat" => 37.7887278, "lng" => -122.4052826 }, "travel_mode" => "WALKING" }, [2] { "distance" => { "text" => "108 ft", "value" => 33 }, "duration" => { "text" => "1 min", "value" => 24 }, "end_location" => { "lat" => 37.7888197, "lng" => -122.4019914 }, "html_instructions" => "Turn <b>right</b> onto <b>Montgomery St</b>", "maneuver" => "turn-right", "polyline" => { "points" => "}tseFvsajVn@IH?" }, "start_location" => { "lat" => 37.7891114, "lng" => -122.4020365 }, "travel_mode" => "WALKING" }, [3] { "distance" => { "text" => "223 ft", "value" => 68 }, "duration" => { "text" => "1 min", "value" => 52 }, "end_location" => { "lat" => 37.7892536, "lng" => -122.4014483 }, "html_instructions" => "Turn <b>left</b> onto <b>Market St</b>", "maneuver" => "turn-left", "polyline" => { "points" => "csseFlsajVe@k@_@k@OS" }, "start_location" => { "lat" => 37.7888197, "lng" => -122.4019914 }, "travel_mode" => "WALKING" } ], "via_waypoint" => [] } ], "overview_polyline" => { "points" => "uhteF~kbjVtC[`E_@tGq@tAQe@yHa@{GCq@n@IH?e@k@o@_A" }, "summary" => "Grant Ave and Post St", "warnings" => [ [0] "Walking directions are in beta. Use caution – This route may be missing sidewalks or pedestrian paths." ], "waypoint_order" => [] } ], "status" => "OK" }}

  let!(:returned_json) {Google.http_get_directions("717 california street", "montgomery st station")}
  it "returns a json object" do
    expect(returned_json).to_not eq(nil)
  end
  it "should equal known good json object" do
    expect(returned_json).to eq(known_good)
  end


end