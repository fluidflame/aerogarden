/*
 * Copyright (C) 2026 Fluid Flame (fluidflame@fluidflame.org)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 */
$fa = $preview ? 12 : 1;
$fs = $preview ? 2 : 0.2;

thickness = 2;
label_height = 10;
label_width = 70;

post_height = 10;
post_radius = 4.9;

difference() {
    union() {
        scale([label_height, label_width, 1])
            cylinder(h=thickness, r=1, $fn=50);
        translate([0, label_width+post_height/2, post_radius-thickness])
            rotate([90, 0, 0])
                cylinder(h=post_height, r=post_radius);
    }
    translate([0, label_width, -thickness])
        #cube([post_height*2, post_height*2, thickness*2], center=true);
}
