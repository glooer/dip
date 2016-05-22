module S11
  class RbDocumentType < S11ActiveRecord::Base
    self.table_name = "rbDocumentType"
    has_many :clientDocument, foreign_key: "documentType_id"
  end
end