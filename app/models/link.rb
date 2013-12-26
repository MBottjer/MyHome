class Link < ActiveRecord::Base

  belongs_to :user
  validates :uri, presence: true

  def has_relevant_icon?
    if self.name.match /^[gG]ithub$/
      return "fa fa-github-square fa-2x"
    elsif self.name.match /^[fF]acebook$/
      return "fa fa-facebook-square fa-2x"
    elsif self.name.match /^[yY]outube$/
      return "fa fa-youtube fa-2x"
    elsif self.name.match /^[gG]oogle+$/
      return "fa fa-google-plus fa-2x"
    elsif self.name.match /^[lL]inked[iI]n$/
      return "fa fa-linkedin-square fa-2x"
  end

end
