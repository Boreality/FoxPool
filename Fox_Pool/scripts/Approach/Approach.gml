/// Approach(a, b, amount)
// Moves "a" towards "b" bvsp "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
// Ehspamples:
//      speed = Approach(speed, mahsp_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, mahsp_hp, heal_amount);
//      hsp = Approach(hsp, target_hsp, move_speed);
//      vsp = Approach(vsp, target_vsp, move_speed);

if (argument0 < argument1)
{
    argument0 += argument2;
    if (argument0 > argument1)
        return argument1;
}
else
{
    argument0 -= argument2;
    if (argument0 < argument1)
        return argument1;
}
return argument0;