class SelectedArticle < ApplicationRecord
  belongs_to :admin
  belongs_to :article
end
