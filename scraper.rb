require 'wikidata/fetcher'

fr_names = WikiData::Category.new( 'Catégorie:Personnalité politique polynésienne', 'fr').member_titles
ty_names = WikiData::Category.new( 'Catégorie:Tià māìtihia', 'ty').member_titles
en_names = WikiData::Category.new( 'Category:Members of the Assembly of French Polynesia', 'en').member_titles

query = 'SELECT DISTINCT ?item { ?item p:P39/ps:P39 wd:Q28332780 }'
ids = EveryPolitician::Wikidata.sparql(query)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { en: en_names, fr: fr_names, ty: ty_names })
