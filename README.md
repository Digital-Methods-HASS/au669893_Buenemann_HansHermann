# Australian views on Germans during first half of the 20th century


---
## Author
Hans Hermann Bünemann Jacobsen, Aarhus University, 202004296@post.au.dk

## Abstract

---

## License
Creative Commons Zero v1.0 Universal, see attached [License.md](https://github.com/Digital-Methods-HASS/au669893_Buenemann_HansHermann/blob/main/LICENSE.md)

All data extracted from Trove are from before 1955 and therefore fall under public domain. 

## Data
The data for this project is from the Trove database, collected using their API https://troveconsole.herokuapp.com/.

The 100 most relevant articles were extracted, relevance based on the keyword "german". That data is in the TroveApiData54.txt file, and that data is also converted into a JSON file in TroveApiData54.json.

The data was cleaned in OpenRefine, uploading TroveApiData.json, and checking the boxes ”Preserve empty strings”, “Attempt to parse cell text into numbers” and “Trim leading & trailing whitespace from strings”. The operations done in OpenRefine are available in the extractedOperationHistoryOpenrefine.txt file.

The cleaned data, to be used in R Studio can be seen in the TroveApiData54.csv file.

### Metadata
the meta data about the dataset used in R Studio: TroveApiData54.csv
* Id = a number that represents the identifier for the article.
* heading = the title of the article.
* article_text = the text in the article, which is the main data used in this analysis.
* date = the publication date of the article.
* category = the type of data (article).
* api_url = the URL of the article on the API.
* snippet = a snippet of the text from the article.
* trove_url = the URL of the article on Trove.
* from_newspaper = which newspaper the article was published in.
* relevance_score = a score of the relevance of the article based on the keyword (“german”), given by Trove.
* relevance = an estimation in regular language of how relevant the article is based on the keyword, given by Trove.


### Software
* R version 4.3.1
* RStudio version: RStudio 2023.09.0+463 "Desert Sunflower" Release (b51c81cc303d4b52b010767e5b30438beb904641, 2023-09-25) for windows
* OpenRefine version: 3.7.4 [05e9de9]
