The data (from different genres, 35 Wikipedia articles, five fairytales from the Gutenberg-project and five descriptions of vintage furniture) is stored in masxml-folder and taken from the Phrase-Detectives-Corpus-2.1.4 (https://github.com/dali-ambiguity/Phrase-Detectives-Corpus-2.1.4).
gdown.py was used to download all available data.
text.xsl was used to extract the text content of eacht xml-file.
NeueUeberfuehrung.xsl was used to create a prompt that is meant to train ChatGPT to correctly annotate anaphoric expressions.
Excel_Evaluation.xsl was used to manually (in EXCEL) evaluate the annotations made by ChatGPT.
Ergebnisse.xlsx contains the evaluation in the 'Results'-sheet (final results to the left and pre-training results to the right) and the product of 'text.xsl' in 'Annotation_for_Training'-sheet.
From here the prompts were copied into the ChatGPT message line after ChatGPT was asked to mark anaphoric expressions in a text in bold-face.
