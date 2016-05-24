class Export
  class << self
    #def to_csv(file, data)
     # p [data, file]
    #end
    
    def to_csv(file, data, col_sep: ";", force_quotes: true, header: false)
      CSV.open(file, "wb", :col_sep => col_sep, :force_quotes => force_quotes) do |x|
        x << header if header
        data.each{ |v| x << v }
      end
    end
  
  end
end