class ImplementationStatus < ApplicationRecord


    def to_s
        # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08
        "#{name}"
      end
    
end
