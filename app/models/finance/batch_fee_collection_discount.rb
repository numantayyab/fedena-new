require 'models/finance/fee_collection_discount'
class BatchFeeCollectionDiscount < FeeCollectionDiscount

  belongs_to :receiver ,:class_name=>'Batch'
  validates_presence_of  :receiver_id , :message => "#{t('batch_cant_be_blank')}"



end
