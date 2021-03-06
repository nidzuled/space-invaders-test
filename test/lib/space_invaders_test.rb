# test/lib/space_invaders_test.rb
require 'test_helper'

class SpaceInvadersTest < ActiveSupport::TestCase
  test "should return 0" do
    si = SpaceInvaders.new
    assert_equal( 0, si.check_radar_for_invaders, "There should not be invaders." )
    puts "Phew! There is not invaders."
  end

  test "should return greater the 0" do
    si = SpaceInvaders.new
    assert_not_equal( 0, si.check_radar_for_invaders(example_radar_with_invaders), "There should be invaders." )
    puts "OH no! Invaders are here."
  end

  def example_radar_with_invaders
    '---oo---o----o--ooo--ooo---------o---oo-o----oo---o--o---------o----o------o----------------o--o--o-
      --oooo----oooooooo-oooooo-------o----o------ooo-o---o--o----o------o--o---ooo-----o--oo-o------o----
      -oooooo----oo-ooo-oo-oo-oo------------------ooooo-----o-----o------o---o--o--o-o-o------o----o-o-o--
      oo-oo-oo--oooooo--o-oo-o--o-o-----oo--o-o-oo--o-oo-oo-o--------o-----o------o-ooooo---o--o--o-------
      oooooooo--o-ooo-ooo----o------o-------o---oo-ooooo-o------o----o--------o-oo--ooo-oo-------------o-o
      --o--o----o-o---o-ooooo-o-------o----o---------o-----o-oo-----------oo----ooooooo-ooo-oo------------
      -o-oo-o-------ooooo-o--o--o--o-------o--o-oo-oo-o-o-o----o-------------o--oooo--ooo-o----o-----o--o-
      o-o--o-o--------------------oo---------oo-o-o--ooo----o-----o--o--o----o--o-o-----o-o------o-o------
      -------------------o-----------------o--o---------------o--------o--oo-o-----oo-oo---o--o---o-----oo
      ----------o----------o------------------o--o----o--o-o------------oo------o--o-o---o-----o----------
      ------o----o-o---o-----o-o---------oo-o--------o---------------------------------o-o-o--o-----------
      ---------------o-------------o-------o-------------------o-----o---------o-o-------------o-------oo-
      -o--o-------------o-o--------o--o----oo-----------o----ooo----o-------------o----------oo----o---o-o
      -o--o-------------o----oo------o----oooo--o--o-----------o----o-----o--o----o--oo-----------o-------
      -o-----oo-------o------o-----------oooooo-o----------o-----o-------o-----------o---o-o--oooooo-----o
      -o--------o-----o-----o---------oooo-oo-oo-o-----------o---o--oooo-oo--o-------o------oo--oo--o-----
      ------------o-------------------o-oooooooo------------oo-oo-----ooo-oo-----o-------o-oo-oooooooo---o
      ------------------------------------o--o--o---o-----o-------o--oooooo-o------------o-o-ooooooo-o----
      ------------o------o-------o-------o-oo-o-o--o---------o--o-o-o-ooooo-o--------------oo-o----o-oo-o-
      ---o-o----------o--------oo----o--o-o--o-ooo-------o----o-o-o-o-----o-o-----o----------ooo-oo--o---o
      -o-o---------o-o---------------o--o--o--ooo---ooo-------o------oo-oo------------o--------o--o-o--o--
      -------oo---------------------------o-oo----------o------o-o-------o-----o----o-----o-oo-o-----o---o
      ---o--------o-----o-------o-oo-----oo--oo-o----oo----------o--o---oo------oo----o-----o-------o-----
      ---o--ooo-o---------o-o----o------------o---------o----o--o-------o-------------o----------------oo-
      ---o------o----------------o----o------o------o---oo-----------o-------------o----------oo---------o
      --oo---------------o--o------o---o-----o--o-------------o------o-------o-----o-----o----o------o--o-
      -o-------o----------o-o-o-------o-----o--o-o-----------o-oo-----------o------o---------o-----o-o----
      ----------o----o-------o----o--o------o------------o---o---------------oo----o-----ooo--------------
      ----o--------oo----o-o----o--o------ooo----o-oooo---o--o-oo--------o-oo-----o-o---o-o--o-----oo-----
      ------o--------o-ooooo----o---o--o-----o---------------o-o-------o-----o----------------------------
      o-------oo----o--oooooo-o---o--o------oooo--o----o-----o-------o---o----------o------oo-------------
      -o---o----------o--oo-oo-o---o-----o-o------------o---o------oo--o------o------o--------------------
      -----oo-o-o-o---ooooooooo----o----o--------oo----ooooooo------------o----------o-o---o------o-o--oo-
      ------o------o---ooo-o-----------------------o--oo-ooo-oo---o----o--o-------o-----o------o----o----o
      -------o----------ooo-o-----o----o---o--o-oo---ooooooooooo---o--o-oo---ooo------------------------o-
      -o-------o------o-o--ooo--o---o---oo-----o-----o-ooooooo-o--o----o-ooo-o------o--o-o------o-o-------
      ---oo--o---o-o---------o---o--------------o----o-o-----o-o-o-----o--o---o-oo--------o----o----o-----
      o------o----oo-o-----------oo--o---o--------------oo-oo------o-o------o-oo---------o-----oo---------
      ----o--o---o-o-----------o---o------------o-------o----o--o--o--o-o---------------o-----------------
      -------oo--o-o-----o-----o----o-o--o----------------------o-------o------o----oo----ooo---------o---
      o-----oo-------------------o--o-----o-----------o------o-------o----o-----------o----------------o--
      --o---o-------o------------o--------------------o----o--o-------------oo---o---------oo--------o----
      --o--------o---------o------------o------o-------o------------o-------o---o---------ooooo-----------
      ------o--------------o-o-o---------o---o-------o--o-----o-------o-o----------o-----oo-ooo----------o
      --o---------------o----o--oo-------------o---------o-------------------oo---------oo-o-ooo----------
      -o-----------o------ooo----o----------------ooo-----o--------o--o---o-----------o-o-oooooo--------oo
      -o---o-------o---o-oooo-----o-------------------o----oo-----------------o--o--------o--o------o--o--
      -------o---o------oooooo--o----ooo--o--------o-------o----------------------------oo-oo-o--o--------
      o--oo------o-----oo--o-oo------------oo--o------o--o-------------oo----o------------oooo-o------oo--
      -----o----------ooooooooo--------------oo--------------oo-----o-----o-o--o------o----------o----o---'
  end
end
