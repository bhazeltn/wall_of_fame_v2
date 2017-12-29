module TextMethods
  def htmlname
    self.name.gsub(/\W/,'').downcase
  end


end