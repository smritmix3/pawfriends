class Pal < ActiveRecord::Base
 validates :palname, presence: true,length: { minimum: 3,maximum: 40 }
 validates :email, presence: true,length: {maximum: 105 },
                                      uniqueness: { case_sensitive: false }
end
