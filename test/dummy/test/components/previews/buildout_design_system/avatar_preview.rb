# frozen_string_literal: true

module BuildoutDesignSystem
  class AvatarPreview < ViewComponent::Preview
    # @!group Avatar

    # Avatar
    # -------------------------
    # Avatar gives us the ability to display the person's image or initials associated with different elements
    # in the application.
    #
    # ## Usage
    # To add an image to the avatar, pass a hash or array of hashes with the urls of the
    # images in the `images` parameter.
    # The hash should have the following format:
    #
    # ```
    # {
    #   image: "http://url/to/image" || nil,
    #   initials: "FL" || nil
    # }
    # ```
    #
    # if no images or initials are passed, the avatar will display an icon.
    #
    # @param style "Select Variant" select ["single", "stacked"]
    # @param size "Select Size" select ["sm", "md", "lg"]
    def default(style: "single", size: "sm")
      if style == "single"
        image = {
          image: "https://picsum.photos/200?random=1",
          initials: nil
        }
        render(::BuildoutDesignSystem::Avatar.new(size: size, images: image))
      else
        images = [
          {
            image: "https://picsum.photos/200?random=1",
            initials: "JD"
          },
          {
            image: "https://picsum.photos/200?random=2",
            initials: "JD"
          },
          {
            image: nil,
            initials: "JD"
          },
          {
            image: nil,
            initials: nil
          },
          {
            image: "https://picsum.photos/200?random=3",
            initials: "JD"
          }
        ]
        render(::BuildoutDesignSystem::Avatar.new(size: size, images: images))
      end
    end

    def ten_avatars(size: "sm")
      images = [
        {
          image: "https://picsum.photos/200?random=1",
          initials: "JD"
        },
        {
          image: "https://picsum.photos/200?random=2",
          initials: "JD"
        },
        {
          image: nil,
          initials: "JD"
        },
        {
          image: nil,
          initials: nil
        },
        {
          image: "https://picsum.photos/200?random=3",
          initials: "JD"
        },
        {
          image: "https://picsum.photos/200?random=3",
          initials: "JD"
        },
        {
          image: "https://picsum.photos/200?random=3",
          initials: "JD"
        },
        {
          image: "https://picsum.photos/200?random=3",
          initials: "JD"
        },
        {
          image: "https://picsum.photos/200?random=3",
          initials: "JD"
        },
        {
          image: "https://picsum.photos/200?random=3",
          initials: "JD"
        }
      ]
      render(::BuildoutDesignSystem::Avatar.new(size: size, images: images))
    end

    # @param initials "Initials" text
    def initials(size: "sm", initials: "JD")
      image = {
        image: nil,
        initials: initials
      }
      render(::BuildoutDesignSystem::Avatar.new(size: size, images: image))
    end

    def icon_avatar(size: "sm")
      image = {
        image: nil,
        initials: nil
      }
      render(::BuildoutDesignSystem::Avatar.new(size: size, images: image))
    end

    # @!endgroup
  end
end
