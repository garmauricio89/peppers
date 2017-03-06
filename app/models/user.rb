class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   has_attached_file :image, styles: { thumb: "100x100#{}" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :orders
   has_many :items, through: :orders
end
