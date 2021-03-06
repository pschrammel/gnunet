module Gnunet
  module Services
    module Dht
      class PutMsg < ::Gnunet::GnuMessage

        add_field :block_type, :u32
        add_field :options, :u32
        add_field :desired_replication_level, :u32
        add_field :unique_id, :u64
        add_field :expiration, :timestamp
        add_field :key, :string, :length => 512/8
        add_field :data, :string, :length => false


        attr_accessor :options #32
        attr_accessor :desired_replication_level #32
        attr_accessor :unique_id #64
        attr_accessor :expiration #64 timestamp
        attr_reader :key #512
        attr_accessor :data #something

        def key=(k)
          @key=k.ljust(64)
        end

        def block_type
          8
        end

        def type
          142
        end

        def size
          96+data.size
        end

      end
    end
  end
end