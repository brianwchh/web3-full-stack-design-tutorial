module test1

go 1.17

require rsc.io/quote v1.5.2

require (
	golang.org/x/text v0.0.0-20170915032832-14c0d48ead0c // indirect
	rsc.io/sampler v1.3.0 // indirect
)

// require test2 v0.0.0
// replace test2 => ../test2

// require test3 v0.0.0-00010101000000-000000000000

// require (
// 	golang.org/x/text v0.0.0-20170915032832-14c0d48ead0c // indirect
// 	rsc.io/sampler v1.3.0 // indirect
// )

// ## case 1 : replace online package with local modified version ####################################
replace rsc.io/quote  => ../rsc.io/quote@v1.5.2
replace rsc.io/sampler  => ../rsc.io/sampler@v1.3.0

//require test3 v0.0.0
//replace deCensorMedia.org/test3 => ../test3

// ############################ case 2 : giving alias to the online package that might changes its name if no one maintain #################
// in such a way we can change the online url of the package just by one line of code here, without having to
// change all the import code in the project files .

//  import (
// 	// "本地其他模塊名（或者alias？）/package_name"
// 	alias      "test3"
// 	alias name  module name
// )
replace test3 => rsc.io/quote v1.5.2
//replace "test3" => "deCensorMedia.org/test2"

//usage: require module/path v1.2.3  normally do not need to add it by hand
// go mod tidy and go get package version will add it automatically


