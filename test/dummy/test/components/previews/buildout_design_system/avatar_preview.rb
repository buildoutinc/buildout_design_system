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
      images = if style == "single"
         {
          image: "https://picsum.photos/200?random=1",
          initials: nil,
          tooltip: "Text"
        }
      else
        [
          {
            image: "https://picsum.photos/200?random=1",
            initials: "JD",
            tooltip: "Text"
          },
          {
            image: "https://picsum.photos/200?random=2",
            initials: "JD",
            tooltip: "Nice Hover"
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
      end

      render_with_template(locals: { images: images, size: size })
    end


    TEN_AVATARS = [
      {
        image: "https://picsum.photos/200?random=1",
        initials: "JD",
        tooltip: "JD"
      },
      {
        image: "https://picsum.photos/200?random=2",
        initials: "JD",
        tooltip: "JD 2"
      },
      {
        image: nil,
        initials: "JD",
        tooltip: "JD 3"
      },
      {
        image: nil,
        initials: nil
      },
      {
        image: "https://picsum.photos/200?random=3",
        initials: "JD",
        tooltip: "JD 4"
      },
      {
        image: "https://picsum.photos/200?random=3",
        initials: "JD",
        tooltip: "JD 5"
      },
      {
        image: "https://picsum.photos/200?random=3",
        initials: "JD",
        tooltip: "JD 6"
      },
      {
        image: "https://picsum.photos/200?random=3",
        initials: "JD",
        tooltip: "JD 7"
      },
      {
        image: "https://picsum.photos/200?random=3",
        initials: "JD",
        tooltip: "JD 8"
      },
      {
        image: "https://picsum.photos/200?random=3",
        initials: "JD",
        tooltip: "JD 9"
      }
    ]

    def ten_avatars(size: "sm")
      render_with_template(locals: { images: TEN_AVATARS, size: size })
      # render(::BuildoutDesignSystem::Avatar.new(size: size, images: images))
    end

    def ten_avatars_limit_5(size: "sm")
      render_with_template(locals: { images: TEN_AVATARS, size: size })
      # render(::BuildoutDesignSystem::Avatar.new(size: size, images: images))
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
