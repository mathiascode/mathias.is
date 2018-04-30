module Jekyll
    class SriScssHashTag < Jekyll::Tags::IncludeRelativeTag
        def cache_compiled_scss(path, context, compute)
            @@cached_scss ||= {}
            if @@cached_scss.key?(path)
                @@cached_scss[path]
            else
                @@cached_scss[path] = compute.call
            end
        end

        def render(context)
            cache_compiled_scss(@file, context, lambda {
                site = context.registers[:site]
                converter = site.find_converter_instance(Jekyll::Converters::Scss)
                result = super(context)
                scss = result.gsub(/^---.*---/m, '')
                data = converter.convert(scss)
                "sha384-#{Digest::SHA384.base64digest data}"
            })
        end
    end
end

Liquid::Template.register_tag('sri', Jekyll::SriScssHashTag)
