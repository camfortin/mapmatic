class GeoLocation

    def initialize(location_string)
        @is_valid = false
        @raw_string = location_string
        if location_string != nil
            parts = location_string.split(',')
            if parts.count == 3
                @latitude = parts[0].to_f
                @longitude = parts[1].to_f
                @altitude= parts[2].to_f
                @is_valid = true
            end
        end
    end

    def is_valid
        @is_valid
    end

    def check_valid
        if !is_valid
            raise "GeoLocation: invalid format '#{@raw_string}'"
        end
    end

    def latitude
        check_valid
        @latitude
    end

    def longitude
        check_valid
        @longitude
    end

    def altitude
        check_valid
        @altitude
    end

    def to_s
        if is_valid
            "#{@latitude},#{@longitude},#{@altitude}"
        else
            "<invalid>"
        end
    end

end
