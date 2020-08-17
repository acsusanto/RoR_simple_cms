class Subject < ApplicationRecord

    has_many :pages

    scope :visible, lambda { where(:visible => true) }
    scope :invinsible, lambda {where(:visble => false ) }
    scope :sorted, lambda { order("position ASC") }
    scope :newest_first, lambda { order("created_at DESC") }
    scope :search, lambda {|query| where (["name LIKE ?", "%#{query}%"])}

end
