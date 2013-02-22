module Pod
  module Hooks
    class LibraryRepresentation

      # Stores the information of the target installer

      #-----------------------------------------------------------------------#

      # @return [String] The name of the Pods library.
      #
      def name
        library.name
      end

      # @return [Array<Dependency>] The dependencies of this library.
      #
      def dependencies
        target_definition.dependencies
      end

      # @return [Pathname] The path of the prefix_header
      #
      def prefix_header_filename
        library.prefix_header_path
      end

      # @return [Project] The Pods project of the sandbox.
      #
      def project
        sandbox.project
      end

      # @return [TargetDefinition] The target definition of the library.
      #
      def target_definition
        library.target_definition
      end

      # @return [PBXNativeTarget] The target generated by the installation
      #         process.
      #
      def target
        library.target
      end

      #-----------------------------------------------------------------------#

      public

      # @!group Unsafe Hooks API

      # @return [Sandbox] sandbox the sandbox where the support files should
      #         be generated.
      #
      attr_reader :sandbox

      # @return [Library] The library whose target needs to be generated.
      #
      attr_reader :library

      #-----------------------------------------------------------------------#

      # @!group Private implementation

      # @param [Sandbox] sandbox @see sandbox
      # @param [Library] library @see library
      #
      def initialize(sandbox, library)
        @sandbox = sandbox
        @library = library
      end

      #-----------------------------------------------------------------------#

    end
  end
end


