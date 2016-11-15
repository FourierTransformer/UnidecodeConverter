# Unidecode Converter
This repo includes a script to convert the Unidecode data tables from perl into JSON. It currently is using [Text-Unidecode-1.27](http://search.cpan.org/~sburke/Text-Unidecode-1.27/).

## Doing the conversion
 1. Download the latest version of [Text::Unidecode](http://search.cpan.org/perldoc/Text::Unidecode)
 2. Extract and Install it (`perl Makefile.pl; make; make install`)
 3. Copy the `Unidecode` directory from the source and place it in the same directory as `create_transformation_json.pl`
 4. Extract and Install [JSON](http://search.cpan.org/perldoc?JSON)
 5. Run create_transformation_json.pl (`perl create_transformation_json.pl`)
 6. Enjoy your sweet JSON in `transform.json`. Use it in applications, convert it to a different format! Do whatever you want!

## Licenses
 - I am using [Text::Unidecode](http://search.cpan.org/~sburke/Text-Unidecode-1.27/lib/Text/Unidecode.pm) under the Artistic License 2.0. The Unidecode table data has been taken from the source and modified to be represented as JSON.
 - The resulting file (`transform.json`) and conversion script are released under the MIT License - feel free to use them!