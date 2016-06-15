class String
  def md5
    md5 = Digest::MD5.new
    md5.update self
    md5.hexdigest
  end
end