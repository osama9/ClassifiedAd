class User < ActiveRecord::Base
  has_many :classified_ads, dependent: :destroy
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true,
  					   uniqueness: true,
  						format:{
  							with: /^[a-zA-Z0-9_-]+$/,
  							message: 'Must be formatted correctly.',
                			multiline:true
  						}

  def admin?
      self.is_admin
  end
end
