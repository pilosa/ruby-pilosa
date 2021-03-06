# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: public.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "gopilosa_pbuf.Row" do
    repeated :Columns, :uint64, 1
    repeated :Keys, :string, 3
    repeated :Attrs, :message, 2, "gopilosa_pbuf.Attr"
  end
  add_message "gopilosa_pbuf.Pair" do
    optional :ID, :uint64, 1
    optional :Key, :string, 3
    optional :Count, :uint64, 2
  end
  add_message "gopilosa_pbuf.ValCount" do
    optional :Val, :int64, 1
    optional :Count, :int64, 2
  end
  add_message "gopilosa_pbuf.Bit" do
    optional :RowID, :uint64, 1
    optional :ColumnID, :uint64, 2
    optional :Timestamp, :int64, 3
  end
  add_message "gopilosa_pbuf.ColumnAttrSet" do
    optional :ID, :uint64, 1
    optional :Key, :string, 3
    repeated :Attrs, :message, 2, "gopilosa_pbuf.Attr"
  end
  add_message "gopilosa_pbuf.Attr" do
    optional :Key, :string, 1
    optional :Type, :uint64, 2
    optional :StringValue, :string, 3
    optional :IntValue, :int64, 4
    optional :BoolValue, :bool, 5
    optional :FloatValue, :double, 6
  end
  add_message "gopilosa_pbuf.AttrMap" do
    repeated :Attrs, :message, 1, "gopilosa_pbuf.Attr"
  end
  add_message "gopilosa_pbuf.QueryRequest" do
    optional :Query, :string, 1
    repeated :Shards, :uint64, 2
    optional :ColumnAttrs, :bool, 3
    optional :Remote, :bool, 5
    optional :ExcludeRowAttrs, :bool, 6
    optional :ExcludeColumns, :bool, 7
  end
  add_message "gopilosa_pbuf.QueryResponse" do
    optional :Err, :string, 1
    repeated :Results, :message, 2, "gopilosa_pbuf.QueryResult"
    repeated :ColumnAttrSets, :message, 3, "gopilosa_pbuf.ColumnAttrSet"
  end
  add_message "gopilosa_pbuf.QueryResult" do
    optional :Type, :uint32, 6
    optional :Row, :message, 1, "gopilosa_pbuf.Row"
    optional :N, :uint64, 2
    repeated :Pairs, :message, 3, "gopilosa_pbuf.Pair"
    optional :ValCount, :message, 5, "gopilosa_pbuf.ValCount"
    optional :Changed, :bool, 4
  end
  add_message "gopilosa_pbuf.ImportRequest" do
    optional :Index, :string, 1
    optional :Field, :string, 2
    optional :Shard, :uint64, 3
    repeated :RowIDs, :uint64, 4
    repeated :ColumnIDs, :uint64, 5
    repeated :RowKeys, :string, 7
    repeated :ColumnKeys, :string, 8
    repeated :Timestamps, :int64, 6
  end
  add_message "gopilosa_pbuf.ImportValueRequest" do
    optional :Index, :string, 1
    optional :Field, :string, 2
    optional :Shard, :uint64, 3
    repeated :ColumnIDs, :uint64, 5
    repeated :ColumnKeys, :string, 7
    repeated :Values, :int64, 6
  end
end

module GopilosaPbuf
  Row = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.Row").msgclass
  Pair = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.Pair").msgclass
  ValCount = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.ValCount").msgclass
  Bit = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.Bit").msgclass
  ColumnAttrSet = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.ColumnAttrSet").msgclass
  Attr = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.Attr").msgclass
  AttrMap = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.AttrMap").msgclass
  QueryRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.QueryRequest").msgclass
  QueryResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.QueryResponse").msgclass
  QueryResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.QueryResult").msgclass
  ImportRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.ImportRequest").msgclass
  ImportValueRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("gopilosa_pbuf.ImportValueRequest").msgclass
end
