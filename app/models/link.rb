class Link < ActiveRecord::Base
  belongs_to :user

  ICONS = { /^[gG]ithub/ => "fa fa-github-square fa-2x", /^[fF]acebook/ => "fa fa-facebook-square fa-2x", /^[yY]outube/ => "fa fa-youtube fa-2x", /^[gG]oogle+/ => "fa fa-google-plus fa-2x", /^[lL]inkedin/ => "fa fa-linkedin-square fa-2x", /^[tT]witter/ => "fa fa-twitter fa-2x"}

  def relevant_icon
    ICONS.each_key { |key| self.name.match(key) ? (return ICONS[key]) : "button radius"}
  end 



end
