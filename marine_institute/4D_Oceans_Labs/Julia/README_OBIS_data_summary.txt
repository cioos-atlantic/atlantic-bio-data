Data can be found in long-format in the file OBIS_training_sample.csv. 
Description of data: 
|
| Summary: Presence/Absence species matrix of benthic invertebrates from four survey sites in Placentia Bay. 
| 		Data was collected using a drop-camera system and annotating visible invertebrates on the seafloor during a 2-minute video.
|		I've included mostly those species which we had identified down to a genus-species level.
|		But we have more species, if you'de like more data. They are identified by morphotypes (i.e. Porifera sp.2, Asterias sp.1)
|
| Breakdown of column headers
|
|--- Project:
|	only shows PlacentiaBay, because all the data came from various parts of Placentia Bay's west coast
|
|--- SurveyArea:
|	four survey sites: Rushoon 
|			   DArgent (DArgent Bay, specifically)
|			   Burin
|			   StLawrence 	
|
|--- site_tag: 
|	site of camera drop, for reference when mapping
|		Rus = Rushoon
|		Dab = Dargent
|		Bur = Burin
|		SL = St.Lawrence
|
|--- date_ddmmyyyy
|  	date of camera drop where data was taken from
|	format is ddmmyyyy (day - month - year; ie. 14082019 is August 14th 2019)
|		*if in excel, some dates are only dmmyyyy, with the first zero dropped. (ie. 2082020 = August 2nd 2020)
|
|--- time_24_UTC
|	6 digit time code for (roughly) when the camera was dropped for a survey.
|	kind of like the start time of a transect
|		24 hr clock, UTC time zone. 
|
|--- latitude: 
|	y coordinate, in decimal degrees
|
|--- longitutde:
|	x coordinate, in decimal degrees
|
|
| ---- Following this all column headers refer to a species (most by genus)
|	The rows underneath are whether a species was present (=1) or absent (=0) at a specific survey site
