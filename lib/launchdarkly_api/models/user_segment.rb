=begin
#LaunchDarkly REST API

#Build custom integrations with the LaunchDarkly REST API

OpenAPI spec version: 5.3.0
Contact: support@launchdarkly.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module LaunchDarklyApi
  class UserSegment
    # Unique identifier for the user segment.
    attr_accessor :key

    # Name of the user segment.
    attr_accessor :name

    # Description of the user segment.
    attr_accessor :description

    # An array of tags for this user segment.
    attr_accessor :tags

    # A unix epoch time in milliseconds specifying the creation time of this flag.
    attr_accessor :creation_date

    # An array of user keys that are included in this segment.
    attr_accessor :included

    # An array of user keys that should not be included in this segment, unless they are also listed in \"included\".
    attr_accessor :excluded

    # An array of rules that can cause a user to be included in this segment.
    attr_accessor :rules

    # Controls whether this is considered a \"big segment\" which can support an unlimited numbers of users. Include/exclude lists sent with this payload are not used in big segments. Contact your account manager for early access to this feature.
    attr_accessor :unbounded

    attr_accessor :version

    attr_accessor :_links

    attr_accessor :_flags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'key' => :'key',
        :'name' => :'name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'creation_date' => :'creationDate',
        :'included' => :'included',
        :'excluded' => :'excluded',
        :'rules' => :'rules',
        :'unbounded' => :'unbounded',
        :'version' => :'version',
        :'_links' => :'_links',
        :'_flags' => :'_flags'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'key' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<String>',
        :'creation_date' => :'Integer',
        :'included' => :'Array<String>',
        :'excluded' => :'Array<String>',
        :'rules' => :'Array<UserSegmentRule>',
        :'unbounded' => :'BOOLEAN',
        :'version' => :'Integer',
        :'_links' => :'Links',
        :'_flags' => :'Array<FlagListItem>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'creationDate')
        self.creation_date = attributes[:'creationDate']
      end

      if attributes.has_key?(:'included')
        if (value = attributes[:'included']).is_a?(Array)
          self.included = value
        end
      end

      if attributes.has_key?(:'excluded')
        if (value = attributes[:'excluded']).is_a?(Array)
          self.excluded = value
        end
      end

      if attributes.has_key?(:'rules')
        if (value = attributes[:'rules']).is_a?(Array)
          self.rules = value
        end
      end

      if attributes.has_key?(:'unbounded')
        self.unbounded = attributes[:'unbounded']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end

      if attributes.has_key?(:'_flags')
        if (value = attributes[:'_flags']).is_a?(Array)
          self._flags = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @key.nil?
        invalid_properties.push('invalid value for "key", key cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @creation_date.nil?
        invalid_properties.push('invalid value for "creation_date", creation_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @key.nil?
      return false if @name.nil?
      return false if @creation_date.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          key == o.key &&
          name == o.name &&
          description == o.description &&
          tags == o.tags &&
          creation_date == o.creation_date &&
          included == o.included &&
          excluded == o.excluded &&
          rules == o.rules &&
          unbounded == o.unbounded &&
          version == o.version &&
          _links == o._links &&
          _flags == o._flags
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [key, name, description, tags, creation_date, included, excluded, rules, unbounded, version, _links, _flags].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = LaunchDarklyApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
