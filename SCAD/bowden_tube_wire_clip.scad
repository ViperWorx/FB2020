/* Bowden tube wire clips
 *
 * Used for holding wires against a Bowden tube. These clips are easier to
 * remove/replace than kapton tape! Printing considerations:
 *
 *   * 100% infill
 *
 *   * print more than one at once to avoid the need for cooling (move to
 *     opposite corners of your bed)
 *
 *   * choose your extrusion width so that `clip_width` is a multiple of it
 *
 * Author: Alex Hirzel <alex@hirzel.us>
 * License: BSD
 * Thingiverse: <http://www.thingiverse.com/thing:661426>
 * YouMagine: <https://www.youmagine.com/designs/bowden-tube-wire-clip>
 */


/* [Sizing] */

// (mm)
bowden_tube_diameter = 4;

// (mm)
cable_diameter = 7.4;

// - desired width of clip along the tube/wires (mm)
clip_width = 7;


/* [Strength] */

// - minimum thickness of any part of the clip (mm)
clip_thickness = 2;


/* [Hidden] */

// - gap between the tube and wires (mm)
middle_thing_width = 1;

// - lots of resolution
$fn = 32;

/* END PARAMETERS */



// computed for later
c2c_distance = (bowden_tube_diameter + cable_diameter)/2 + middle_thing_width;
inner_gap_width = 0.4*min(bowden_tube_diameter, cable_diameter);
bowden_gap_width = 0.5*bowden_tube_diameter;



difference() {

	// build the outside edge of the clip
	hull() {

		// cylinder around cables
		cylinder(d = cable_diameter + 2*clip_thickness,
		         h = clip_width, $fa = 1);

		// cylinder around bowden tube
		other() cylinder(d = bowden_tube_diameter + 2*clip_thickness,
		                 h = clip_width);
	}

	// subtract volume for cables
	cylinder(d = cable_diameter, h = clip_width);

	// subtract volume for bowden tube
	other() cylinder(d = bowden_tube_diameter, h = clip_width);

	// subtract a path between the two
	translate([0, -inner_gap_width/2, 0])
		cube([c2c_distance, inner_gap_width, clip_width]);

	// finally, subtract the "entrance hole" for the whole thing
	translate([0, -bowden_gap_width/2, 0])
		other() cube([c2c_distance, bowden_gap_width, clip_width]);
}

module other() {
	translate([c2c_distance, 0, 0])
		children();
}

