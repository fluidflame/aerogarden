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
ring_inner = 20;
ring_outer = 25;

post_height = 10;
post_inner = 5;
post_outer = 7;

post_center_x = ring_outer + post_outer;

union() {
    difference() {
        hull() {
            cylinder(h=thickness, r=ring_outer);
            translate([post_center_x, 0, 0])
                cylinder(h=thickness, r=post_outer);
        }
        translate([0, 0, -0.1])
            cylinder(h=thickness*2, r=ring_inner);
    }
    difference() {
        translate([post_center_x, 0, thickness-0.1])
            cylinder(h=post_height+0.1, r=post_outer);
        translate([post_center_x, 0, thickness])
            cylinder(h=post_height*2, r=post_inner);
    }
}
