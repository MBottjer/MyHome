class Link < ActiveRecord::Base
  belongs_to :user

  def has_relevant_icon 
    if self.name.match /^[gG]ithub$/
      "fa fa-github-square fa-2x"
    elsif self.name.match /^[fF]acebook$/
      "fa fa-facebook-square fa-2x"
    elsif self.name.match /^[yY]outube$/
      "fa fa-youtube fa-2x"
    elsif self.name.match /^[gG]oogle+$/
      "fa fa-google-plus fa-2x"
    elsif self.name.match /^[lL]inkedin$/
      "fa fa-linkedin-square fa-2x"
    elsif self.name.match /^[tT]witter$/
      "fa fa-twitter fa-2x" 
    else 
      "button radius"
    end
  end

end
