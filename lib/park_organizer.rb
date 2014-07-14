class ParkOrganizer

  def initialize (parks)
    @parks = parks
  end



  def sort_by_id
    sorted_parks = {}
    parks = @parks.sort_by {|hash| hash[:id]}
    parks.each do |park|
    sorted_parks[park[:id]] = park
    end
    sorted_parks
  end

  def sort_by_country
    @parks.group_by {|hash| hash[:country]}
  end

end

