module WillPaginate::Liquorized
  def self.included(base)
    WillPaginate::Collection.class_eval do 
      def to_liquor
        CollectionDrop.new self    
      end

      def collect(&block)    
        dup.replace super.collect(&block)
      end
    end  
  end
  
  class CollectionDrop < Liquor::Drop
    liquor_attributes << :current_page << :per_page << :total_entries << :offset << :total_pages << :previous_page << :next_page << :empty? << :length << :sort_by
  end
end