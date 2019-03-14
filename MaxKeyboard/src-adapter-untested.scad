
base_x = 22.5;
base_y = 13.5;
base_h = 0.8;

base_hole_r = 5.5 / 2;

stem_shift = 5;

stem_cutout_x = 4.1;
stem_cutout_y = 1.5;
stem_cutout_x_margin = 0.7;

stem_h = 5;

rounding_r = 0.5;

epsilon = 0.01;


module base()
{
    translate([-base_x / 2, -base_y / 2, 0])
    {
        intersection()
        {
            translate([rounding_r, rounding_r, 0]) minkowski()
            {
                cube([base_x - 2 * rounding_r, base_y - 2 * rounding_r, base_h]);
                cylinder(base_h, rounding_r, rounding_r);
            }
            
            cube([base_x, base_y, base_h]); 
        }
    }
}

module reinforcements()
{
    translate([-base_x / 2 + 1, -base_y / 2, 0])
    {
        cube([base_x - 2, 1.5, 2]);
    }
    
        translate([-base_x / 2 + 1, base_y / 2 - 1.5, 0])
    {
        cube([base_x - 2, 1.5, 2]);
    }
}

module stem_cutout()
{
    translate([stem_shift, 0, 0]) union()
    {
        translate([-stem_cutout_x / 2 -stem_cutout_x_margin / 2, - stem_cutout_y / 2, - epsilon])
        {
            cube([stem_cutout_x + stem_cutout_x_margin, stem_cutout_y, stem_h + epsilon * 2]);        
        }

        translate([-stem_cutout_y / 2, -stem_cutout_x / 2 -stem_cutout_x_margin / 2, - epsilon])
        {
            cube([stem_cutout_y, stem_cutout_x + stem_cutout_x_margin, stem_h + epsilon * 2]);        
        }    
    }  
}

module stem()
{
    translate([stem_shift - (stem_cutout_x + stem_cutout_x_margin) / 2 - 0.8, - stem_cutout_x / 2, 0])
    {
        cube([stem_cutout_x + stem_cutout_x_margin + 1.6, stem_cutout_x, stem_h]);  
    }
}

module adapter()
{
    $fn = 100;
 
    union()
    {
        base();
        reinforcements();
        difference()
        {
            stem();
            stem_cutout(); 
        }
    }
}

adapter();

