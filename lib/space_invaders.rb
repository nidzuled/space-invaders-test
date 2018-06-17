class SpaceInvaders

  def initialize
    @invaders = get_space_invaders
  end


  def check_radar_for_invaders(radar=get_default_radar)
    radar_arr = radar.strip.split(/\s+/) # splitting radar image into array
    found_invaders = 0
    radar_arr.each_with_index do |item, index|
      @invaders.each do |invader|
        if item.include? invader[0] # checking if top part of invader is found
          invader_top_coordinate = item.index(invader[0]) # getting position of top part of invader
          new_radar_arr = radar_arr.drop(index+1) # creating new radar array, by removing checked elements
          if new_radar_arr.size >= invader.size - 1 # checking if size of current array is larger or equal to invader size
            found = true
            invader.drop(1).each_with_index do |in_part, j| # looping through invaders parts
              if new_radar_arr[j].index(in_part) != invader_top_coordinate #if coordinates of top part and current part don't match break loop
                found = false
                break
              end
            end
            found_invaders += 1 if found
          end
        end
      end
    end
    found_invaders
  end

  def get_space_invaders
    [
        ['--o-----o--','---o---o---','--ooooooo--','-oo-ooo-oo-','ooooooooooo','o-ooooooo-o','o-o-----o-o','---oo-oo---'],
        ['---oo---','--oooo--','-oooooo-','oo-oo-oo','oooooooo','--o--o--','-o-oo-o-','o-o--o-o']
    ]
  end

  def get_default_radar
    '----o--oo----o--ooo--ooo---------o---oo-o----oo---o--o---------o----o------o----------------o--o--o-
    --o-o-----oooooooo-oooooo-------o----o------ooo-o---o--o----o------o--o---ooo-----o--oo-o------o----
    --o--------oo-ooo-oo-oo-oo------------------ooooo-----o-----o------o---o--o--o-o-o------o----o-o-o--
    -------o--oooooo--o-oo-o--o-o-----oo--o-o-oo--o-oo-oo-o--------o-----o------o-ooooo---o--o--o-------
    ------o---o-ooo-ooo----o------o-------o---oo-ooooo-o------o----o--------o-oo--ooo-oo-------------o-o
    -o--o-----o-o---o-ooooo-o-------o----o---------o-----o-oo-----------oo----ooooooo-ooo-oo------------
    o-------------ooooo-o--o--o--o-------o--o-oo-oo-o-o-o----o-------------o--oooo--ooo-o----o-----o--o-
    --o-------------------------oo---------oo-o-o--ooo----o-----o--o--o----o--o-o-----o-o------o-o------
    -------------------o-----------------o--o---------------o--------o--oo-o-----oo-oo---o--o---o-----oo
    ----------o----------o------------------o--o----o--o-o------------oo------o--o-o---o-----o----------
    ------o----o-o---o-----o-o---------oo-o--------o---------------------------------o-o-o--o-----------
    ---------------o-------------o-------o-------------------o-----o---------o-o-------------o-------oo-
    -o--o-------------o-o--------o--o--oo-------------o----ooo----o-------------o----------oo----o---o-o
    -o--o-------------o----oo------o--o-------o--o-----------o----o-----o--o----o--oo-----------o-------
    -o-----oo-------o------o---------------o--o----------o-----o-------o-----------o---o-o--oooooo-----o
    -o--------o-----o-----o---------oo----oo---o-----------o---o--oooo-oo--o-------o------oo--oo--o-----
    ------------o-------------------o----oooo-------------oo-oo-----ooo-oo-----o-------o-oo-oooooooo---o
    -----------------------------------oooooooo---o-----o-------o--oooooo-o------------o-o-ooooooo-o----
    ------------o------o-------o-------oo-oo--o--o---------o--o-o-o-ooooo-o--------------oo-o----o-oo-o-
    ---o-o----------o--------oo----o----oooooooo-------o----o-o-o-o-----o-o-----o----------ooo-oo--o---o
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
    o-------oo----o--oooooo-o---o--o------oooo----------o-oo-------o---o----------o------oo-------------
    -o---o----------o--oo-oo-o---o-----o-o-----------------------oo--o------o------o--------------------
    -----oo-o-o-o---ooooooooo----o----o--------o--o---oo---o------------o----------o-o---o------o-o--oo-
    ------o------o---ooo-o---------------------------o--o---o---o----o--o-------o-----o------o----o----o
    -------o----------ooo-o-----o----o---o--o-oo--o--o-o--o------o--o-oo---ooo------------------------o-
    -o-------o------o-o--ooo--o---o---oo-----o----o-------------o----o-ooo-o------o--o-o------o-o-------
    ---oo--o---o-o---------o---o--------------o--o-----o-------o-----o--o---o-oo--------o----o----o-----
    o------o----oo-o-----------oo--o---o--------o-o------o-------o-o------o-oo---------o-----oo---------
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