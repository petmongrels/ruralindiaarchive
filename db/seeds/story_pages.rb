::Page.reset_column_information
# Check whether all columns are applied yet by seo_meta.
unless !defined?(::SeoMeta) || ::SeoMeta.attributes.keys.all? { |k|
  ::Page.translation_class.instance_methods.map(&:to_sym).include?(k)
}
  # Make pages model seo_meta because not all columns are accessible.
  ::Page.translation_class.send :is_seo_meta
end

########################################################################################################################################################
page = Page.create(:title => "Drought in Vidarbha",
                   :deletable => true,
                   :position => 0)
page.parts.create({
                      :title => "Body",
                      :body => "<p>02 May 2010 - He's a butcher out of business. &quot;I want to shift to a town like Panderkauda,&quot; says Sarfaraz Qureshi in Yavatmal district. &quot;I'm unable to sell any meat in the villages I work in.&quot; Qureshi is a small operator who carries as much meat as he can load on to his motorcycle to poor tribal villages on the forest edge. And there he sells at very low prices. &quot;Yet my business has collapsed,&quot; he says. But why? Have people in those villages stopped consuming meat? Are they now unable to afford even his prices?</p>
<p>&quot;These past months, they're eating more meat than ever before,&quot; says Qureshi. &quot;Only, it's free. The forests are stone dry and the drought has seen many wild animals coming out these past months to the fields and farms in search of water - only to be trapped and eaten. So how can I sell any meat? I've made many trips and sold nothing.&quot; There is no aspect of life in Vidarbha that has not been impacted by the severe water scarcity.</p>
<p>Matter of life and death</p>
<p>In the village of Jaulkhed in Akola we meet a baby deer that strolled in with the goats returning from grazing. A sympathetic village has adopted the young creature, who seems at ease with his new world. Other wildlife has been less fortunate. Boar, deer and even peacocks coming out of the forest or woods for water have been eaten by hungry villagers. The desperate search for water is a matter of life and, literally, death.</p>
<p>Vidarbha is not a very low rainfall region. Some of its districts get 900 mm or more a year on average. But the last two years have been bad. Rainfall has either been very deficient or highly erratic in timing and intensity. Across rural Amravati, Akola, Washim and Yavatmal, almost every human being you see between 6 and 10 a.m. in the morning (and often at other hours, too) is collecting or searching for water. If they're women or even tiny girls, they're carrying vessels, empty or full, on their heads. If men, they're riding some sort of cart or bicycle trying to collect as much water as they can find. This sometimes means fiddling with the valves of pipelines or just marauding any well they can. Wells that still have some water, that is.</p>
<p>One group talks to us while emptying such a well. &quot;Look at this water,&quot; says one of them smiling, showing us a brownish liquid in his battered can. Meanwhile, some of Vidarbha's reservoirs are approaching or have arrived at dead storage levels. That is, at levels from which the water cannot be lifted or transported.</p>
<p>&quot;In some of our villages,&quot; says Vasudev Ingle in Kinkhed in Akola district, &quot;you can get water through the formal supply once in 10 or 12 days.&quot; Maya Ove of Dharel village, carrying three pots on her head, each atop the other, stops to agree. &quot;This takes hours of our time every day.&quot; Even the livestock you see are searching for water. And wild animals are wandering into the farms or villages looking for it.</p>",
                      :position => 0
                  })
page.parts.create({
                    :title => "Categories",
                    :body => "Things we do, Farm crisis",
                    :position => 1
                  })
########################################################################################################################################################
page = Page.create(:title => "Women warriors of the sea",
                   :deletable => true,
                   :position => 1)
page.parts.create({
                      :title => "Body",
                      :body => "Struggling to preserve their livelihood in the face of the rapid expansion of the Mundra Port and Special Economic Zone in Gujarat, the women and men of nearby fishing villages are trying hard to come to terms with a changing world. Geeta Seshu has more. 31 May 2008 - Mundra, Gujarat - WFS - &quot;We can see the towers of the new port in the distance. We can also see our day's catch getting smaller and smaller. We are being slowly pushed further from the sea. But the sea belongs to everyone. The sea will not let us down,&quot; says an optimistic Jannatbai, a leading member of a fishing community at Mundra on the western coast of Gujarat.
Struggling to preserve their livelihood in the face of the rapid expansion of the over-Rs.70,000 million Mundra Port and Special Economic Zone (MPSEZ) promoted by the Adani group, the women and men of over 10 fishing villages in the area are trying hard to come to terms with a changing world. Their once bountiful sea is now flooded with trawlers, bulldozers, pipelines, towers and bridges of what is touted to be the country's largest SEZ, comprising an airport and a seaport spanning 28 kilometres of the coastline and 13,000 hectares of land in the Gulf of Kutch.",
                      :position => 0
                  })
page.parts.create({
                    :title => "Categories",
                    :body => "We are",
                    :position => 1
                  })
########################################################################################################################################################