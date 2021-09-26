// To parse this JSON data, do
//
//     final getAllRecepiesModel = getAllRecepiesModelFromJson(jsonString);

import 'dart:convert';

GetAllRecepiesModel getAllRecepiesModelFromJson(String str) =>
    GetAllRecepiesModel.fromJson(json.decode(str));

String getAllRecepiesModelToJson(GetAllRecepiesModel data) =>
    json.encode(data.toJson());

class GetAllRecepiesModel {
  GetAllRecepiesModel({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  List<Recepies>? data;

  factory GetAllRecepiesModel.fromJson(Map<String, dynamic> json) =>
      GetAllRecepiesModel(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Recepies>.from(
                json["data"]!.map((x) => Recepies.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Recepies {
  Recepies({
    this.id,
    this.recipeMetas,
  });

  int? id;
  RecipeMetas? recipeMetas;

  factory Recepies.fromJson(Map<String, dynamic> json) => Recepies(
        id: json["id"] == null ? null : json["id"],
        recipeMetas: json["recipe_metas"] == null
            ? null
            : RecipeMetas.fromJson(json["recipe_metas"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "recipe_metas": recipeMetas == null ? null : recipeMetas?.toJson(),
      };
}

class RecipeMetas {
  RecipeMetas({
    this.recipeSubtitle,
    this.recipeDescription,
    this.recipeKeywords,
    this.difficultyLevel,
    this.prepTime,
    this.prepTimeUnit,
    this.cookTime,
    this.cookTimeUnit,
    this.restTime,
    this.restTimeUnit,
    this.recipeCalories,
    this.bestSeason,
    this.noOfServings,
    this.ingredientTitle,
    this.recipeIngredients,
    this.instructionsTitle,
    this.recipeInstructions,
    this.enableImageGallery,
    this.imageGalleryImages,
    this.enableVideoGallery,
    this.videoGalleryVids,
    this.recipeAffiliates,
    this.servingSize,
    this.servings,
    this.calories,
    this.caloriesFromFat,
    this.totalFat,
    this.saturatedFat,
    this.transFat,
    this.cholesterol,
    this.sodium,
    this.potassium,
    this.totalCarbohydrate,
    this.dietaryFiber,
    this.sugars,
    this.protein,
    this.vitaminA,
    this.vitaminC,
    this.calcium,
    this.iron,
    this.vitaminD,
    this.vitaminE,
    this.vitaminK,
    this.thiamin,
    this.riboflavin,
    this.niacin,
    this.vitaminB6,
    this.folate,
    this.vitaminB12,
    this.biotin,
    this.pantothenicAcid,
    this.phosphorus,
    this.iodine,
    this.magnesium,
    this.zinc,
    this.selenium,
    this.copper,
    this.manganese,
    this.chromium,
    this.molybdenum,
    this.chloride,
    this.recipeNotes,
  });

  String? recipeSubtitle;
  String? recipeDescription;
  String? recipeKeywords;
  DifficultyLevel? difficultyLevel;
  String? prepTime;
  TimeUnit? prepTimeUnit;
  String? cookTime;
  TimeUnit? cookTimeUnit;
  String? restTime;
  TimeUnit? restTimeUnit;
  String? recipeCalories;
  BestSeason? bestSeason;
  String? noOfServings;
  IngredientTitle? ingredientTitle;
  List<RecipeIngredient>? recipeIngredients;
  InstructionTitle? instructionsTitle;
  List<RecipeInstruction>? recipeInstructions;
  EnableGallery? enableImageGallery;
  List<dynamic>? imageGalleryImages;
  EnableGallery? enableVideoGallery;
  List<dynamic>? videoGalleryVids;
  List<RecipeAffiliate>? recipeAffiliates;
  String? servingSize;
  String? servings;
  String? calories;
  String? caloriesFromFat;
  String? totalFat;
  String? saturatedFat;
  String? transFat;
  String? cholesterol;
  String? sodium;
  String? potassium;
  String? totalCarbohydrate;
  String? dietaryFiber;
  String? sugars;
  String? protein;
  String? vitaminA;
  String? vitaminC;
  String? calcium;
  String? iron;
  String? vitaminD;
  String? vitaminE;
  String? vitaminK;
  String? thiamin;
  String? riboflavin;
  String? niacin;
  String? vitaminB6;
  String? folate;
  String? vitaminB12;
  String? biotin;
  String? pantothenicAcid;
  String? phosphorus;
  String? iodine;
  String? magnesium;
  String? zinc;
  String? selenium;
  String? copper;
  String? manganese;
  String? chromium;
  String? molybdenum;
  String? chloride;
  String? recipeNotes;

  factory RecipeMetas.fromJson(Map<String, dynamic> json) => RecipeMetas(
        recipeSubtitle:
            json["recipeSubtitle"] == null ? null : json["recipeSubtitle"],
        recipeDescription: json["recipeDescription"] == null
            ? null
            : json["recipeDescription"],
        recipeKeywords:
            json["recipeKeywords"] == null ? null : json["recipeKeywords"],
        difficultyLevel: json["difficultyLevel"] == null
            ? null
            : difficultyLevelValues.map![json["difficultyLevel"]],
        prepTime: json["prepTime"] == null ? null : json["prepTime"],
        prepTimeUnit: json["prepTimeUnit"] == null
            ? null
            : timeUnitValues.map![json["prepTimeUnit"]],
        cookTime: json["cookTime"] == null ? null : json["cookTime"],
        cookTimeUnit: json["cookTimeUnit"] == null
            ? null
            : timeUnitValues.map![json["cookTimeUnit"]],
        restTime: json["restTime"] == null ? null : json["restTime"],
        restTimeUnit: json["restTimeUnit"] == null
            ? null
            : timeUnitValues.map![json["restTimeUnit"]],
        recipeCalories:
            json["recipeCalories"] == null ? null : json["recipeCalories"],
        bestSeason: json["bestSeason"] == null
            ? null
            : bestSeasonValues.map![json["bestSeason"]],
        noOfServings:
            json["noOfServings"] == null ? null : json["noOfServings"],
        ingredientTitle: json["ingredientTitle"] == null
            ? null
            : ingredientTitleValues.map![json["ingredientTitle"]],
        recipeIngredients: json["recipeIngredients"] == null
            ? null
            : List<RecipeIngredient>.from(json["recipeIngredients"]!
                .map((x) => RecipeIngredient.fromJson(x))),
        instructionsTitle: json["instructionsTitle"] == null
            ? null
            : instructionTitleValues.map![json["instructionsTitle"]],
        recipeInstructions: json["recipeInstructions"] == null
            ? null
            : List<RecipeInstruction>.from(json["recipeInstructions"]!
                .map((x) => RecipeInstruction.fromJson(x))),
        enableImageGallery: json["enableImageGallery"] == null
            ? null
            : enableGalleryValues.map![json["enableImageGallery"]],
        imageGalleryImages: json["imageGalleryImages"] == null
            ? null
            : List<dynamic>.from(json["imageGalleryImages"]!.map((x) => x)),
        enableVideoGallery: json["enableVideoGallery"] == null
            ? null
            : enableGalleryValues.map![json["enableVideoGallery"]],
        videoGalleryVids: json["videoGalleryVids"] == null
            ? null
            : List<dynamic>.from(json["videoGalleryVids"]!.map((x) => x)),
        recipeAffiliates: json["recipeAffiliates"] == null
            ? null
            : List<RecipeAffiliate>.from(json["recipeAffiliates"]!
                .map((x) => RecipeAffiliate.fromJson(x))),
        servingSize: json["servingSize"] == null ? null : json["servingSize"],
        servings: json["servings"] == null ? null : json["servings"],
        calories: json["calories"] == null ? null : json["calories"],
        caloriesFromFat:
            json["caloriesFromFat"] == null ? null : json["caloriesFromFat"],
        totalFat: json["totalFat"] == null ? null : json["totalFat"],
        saturatedFat:
            json["saturatedFat"] == null ? null : json["saturatedFat"],
        transFat: json["transFat"] == null ? null : json["transFat"],
        cholesterol: json["cholesterol"] == null ? null : json["cholesterol"],
        sodium: json["sodium"] == null ? null : json["sodium"],
        potassium: json["potassium"] == null ? null : json["potassium"],
        totalCarbohydrate: json["totalCarbohydrate"] == null
            ? null
            : json["totalCarbohydrate"],
        dietaryFiber:
            json["dietaryFiber"] == null ? null : json["dietaryFiber"],
        sugars: json["sugars"] == null ? null : json["sugars"],
        protein: json["protein"] == null ? null : json["protein"],
        vitaminA: json["vitaminA"] == null ? null : json["vitaminA"],
        vitaminC: json["vitaminC"] == null ? null : json["vitaminC"],
        calcium: json["calcium"] == null ? null : json["calcium"],
        iron: json["iron"] == null ? null : json["iron"],
        vitaminD: json["vitaminD"] == null ? null : json["vitaminD"],
        vitaminE: json["vitaminE"] == null ? null : json["vitaminE"],
        vitaminK: json["vitaminK"] == null ? null : json["vitaminK"],
        thiamin: json["thiamin"] == null ? null : json["thiamin"],
        riboflavin: json["riboflavin"] == null ? null : json["riboflavin"],
        niacin: json["niacin"] == null ? null : json["niacin"],
        vitaminB6: json["vitaminB6"] == null ? null : json["vitaminB6"],
        folate: json["folate"] == null ? null : json["folate"],
        vitaminB12: json["vitaminB12"] == null ? null : json["vitaminB12"],
        biotin: json["biotin"] == null ? null : json["biotin"],
        pantothenicAcid:
            json["pantothenicAcid"] == null ? null : json["pantothenicAcid"],
        phosphorus: json["phosphorus"] == null ? null : json["phosphorus"],
        iodine: json["iodine"] == null ? null : json["iodine"],
        magnesium: json["magnesium"] == null ? null : json["magnesium"],
        zinc: json["zinc"] == null ? null : json["zinc"],
        selenium: json["selenium"] == null ? null : json["selenium"],
        copper: json["copper"] == null ? null : json["copper"],
        manganese: json["manganese"] == null ? null : json["manganese"],
        chromium: json["chromium"] == null ? null : json["chromium"],
        molybdenum: json["molybdenum"] == null ? null : json["molybdenum"],
        chloride: json["chloride"] == null ? null : json["chloride"],
        recipeNotes: json["recipeNotes"] == null ? null : json["recipeNotes"],
      );

  Map<String, dynamic> toJson() => {
        "recipeSubtitle": recipeSubtitle == null ? null : recipeSubtitle,
        "recipeDescription":
            recipeDescription == null ? null : recipeDescription,
        "recipeKeywords": recipeKeywords == null ? null : recipeKeywords,
        "difficultyLevel": difficultyLevel == null
            ? null
            : difficultyLevelValues.reverse![difficultyLevel],
        "prepTime": prepTime == null ? null : prepTime,
        "prepTimeUnit":
            prepTimeUnit == null ? null : timeUnitValues.reverse![prepTimeUnit],
        "cookTime": cookTime == null ? null : cookTime,
        "cookTimeUnit":
            cookTimeUnit == null ? null : timeUnitValues.reverse![cookTimeUnit],
        "restTime": restTime == null ? null : restTime,
        "restTimeUnit":
            restTimeUnit == null ? null : timeUnitValues.reverse![restTimeUnit],
        "recipeCalories": recipeCalories == null ? null : recipeCalories,
        "bestSeason":
            bestSeason == null ? null : bestSeasonValues.reverse![bestSeason],
        "noOfServings": noOfServings == null ? null : noOfServings,
        "ingredientTitle": ingredientTitle == null
            ? null
            : ingredientTitleValues.reverse![ingredientTitle],
        "recipeIngredients": recipeIngredients == null
            ? null
            : List<dynamic>.from(recipeIngredients!.map((x) => x.toJson())),
        "instructionsTitle": instructionsTitle == null
            ? null
            : instructionTitleValues.reverse![instructionsTitle],
        "recipeInstructions": recipeInstructions == null
            ? null
            : List<dynamic>.from(recipeInstructions!.map((x) => x.toJson())),
        "enableImageGallery": enableImageGallery == null
            ? null
            : enableGalleryValues.reverse![enableImageGallery],
        "imageGalleryImages": imageGalleryImages == null
            ? null
            : List<dynamic>.from(imageGalleryImages!.map((x) => x)),
        "enableVideoGallery": enableVideoGallery == null
            ? null
            : enableGalleryValues.reverse![enableVideoGallery],
        "videoGalleryVids": videoGalleryVids == null
            ? null
            : List<dynamic>.from(videoGalleryVids!.map((x) => x)),
        "recipeAffiliates": recipeAffiliates == null
            ? null
            : List<dynamic>.from(recipeAffiliates!.map((x) => x.toJson())),
        "servingSize": servingSize == null ? null : servingSize,
        "servings": servings == null ? null : servings,
        "calories": calories == null ? null : calories,
        "caloriesFromFat": caloriesFromFat == null ? null : caloriesFromFat,
        "totalFat": totalFat == null ? null : totalFat,
        "saturatedFat": saturatedFat == null ? null : saturatedFat,
        "transFat": transFat == null ? null : transFat,
        "cholesterol": cholesterol == null ? null : cholesterol,
        "sodium": sodium == null ? null : sodium,
        "potassium": potassium == null ? null : potassium,
        "totalCarbohydrate":
            totalCarbohydrate == null ? null : totalCarbohydrate,
        "dietaryFiber": dietaryFiber == null ? null : dietaryFiber,
        "sugars": sugars == null ? null : sugars,
        "protein": protein == null ? null : protein,
        "vitaminA": vitaminA == null ? null : vitaminA,
        "vitaminC": vitaminC == null ? null : vitaminC,
        "calcium": calcium == null ? null : calcium,
        "iron": iron == null ? null : iron,
        "vitaminD": vitaminD == null ? null : vitaminD,
        "vitaminE": vitaminE == null ? null : vitaminE,
        "vitaminK": vitaminK == null ? null : vitaminK,
        "thiamin": thiamin == null ? null : thiamin,
        "riboflavin": riboflavin == null ? null : riboflavin,
        "niacin": niacin == null ? null : niacin,
        "vitaminB6": vitaminB6 == null ? null : vitaminB6,
        "folate": folate == null ? null : folate,
        "vitaminB12": vitaminB12 == null ? null : vitaminB12,
        "biotin": biotin == null ? null : biotin,
        "pantothenicAcid": pantothenicAcid == null ? null : pantothenicAcid,
        "phosphorus": phosphorus == null ? null : phosphorus,
        "iodine": iodine == null ? null : iodine,
        "magnesium": magnesium == null ? null : magnesium,
        "zinc": zinc == null ? null : zinc,
        "selenium": selenium == null ? null : selenium,
        "copper": copper == null ? null : copper,
        "manganese": manganese == null ? null : manganese,
        "chromium": chromium == null ? null : chromium,
        "molybdenum": molybdenum == null ? null : molybdenum,
        "chloride": chloride == null ? null : chloride,
        "recipeNotes": recipeNotes == null ? null : recipeNotes,
      };
}

enum BestSeason { AVAILABLE }

final bestSeasonValues = EnumValues({"available": BestSeason.AVAILABLE});

enum TimeUnit { MIN }

final timeUnitValues = EnumValues({"min": TimeUnit.MIN});

enum DifficultyLevel { INTERMEDIATE }

final difficultyLevelValues =
    EnumValues({"intermediate": DifficultyLevel.INTERMEDIATE});

enum EnableGallery { NO }

final enableGalleryValues = EnumValues({"no": EnableGallery.NO});

enum IngredientTitle { INGREDIENTS }

final ingredientTitleValues =
    EnumValues({"Ingredients": IngredientTitle.INGREDIENTS});

enum InstructionTitle { INSTRUCTIONS }

final instructionTitleValues =
    EnumValues({"Instructions": InstructionTitle.INSTRUCTIONS});

class RecipeAffiliate {
  RecipeAffiliate({
    this.affiliateImage,
    this.affiliateLink,
  });

  String? affiliateImage;
  String? affiliateLink;

  factory RecipeAffiliate.fromJson(Map<String, dynamic> json) =>
      RecipeAffiliate(
        affiliateImage:
            json["affiliateImage"] == null ? null : json["affiliateImage"],
        affiliateLink:
            json["affiliateLink"] == null ? null : json["affiliateLink"],
      );

  Map<String, dynamic> toJson() => {
        "affiliateImage": affiliateImage == null ? null : affiliateImage,
        "affiliateLink": affiliateLink == null ? null : affiliateLink,
      };
}

class RecipeIngredient {
  RecipeIngredient({
    this.sectionTitle,
    this.ingredients,
  });

  String? sectionTitle;
  List<Ingredient>? ingredients;

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) =>
      RecipeIngredient(
        sectionTitle:
            json["sectionTitle"] == null ? null : json["sectionTitle"],
        ingredients: json["ingredients"] == null
            ? null
            : List<Ingredient>.from(
                json["ingredients"]!.map((x) => Ingredient.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "sectionTitle": sectionTitle == null ? null : sectionTitle,
        "ingredients": ingredients == null
            ? null
            : List<dynamic>.from(ingredients!.map((x) => x.toJson())),
      };
}

class Ingredient {
  Ingredient({
    this.quantity,
    this.unit,
    this.ingredient,
    this.notes,
    this.chosen,
    this.selected,
  });

  String? quantity;
  Unit? unit;
  String? ingredient;
  Notes? notes;
  String? chosen;
  String? selected;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        quantity: json["quantity"] == null ? null : json["quantity"],
        unit: json["unit"] == null ? null : unitValues.map![json["unit"]],
        ingredient: json["ingredient"] == null ? null : json["ingredient"],
        notes: json["notes"] == null ? null : notesValues.map![json["notes"]],
        chosen: json["chosen"] == null ? null : json["chosen"],
        selected: json["selected"] == null ? null : json["selected"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity == null ? null : quantity,
        "unit": unit == null ? null : unitValues.reverse![unit],
        "ingredient": ingredient == null ? null : ingredient,
        "notes": notes == null ? null : notesValues.reverse![notes],
        "chosen": chosen == null ? null : chosen,
        "selected": selected == null ? null : selected,
      };
}

enum Notes { EMPTY, FOR_WHOLE_GARAM_MASALA }

final notesValues = EnumValues(
    {"": Notes.EMPTY, "for whole garam masala": Notes.FOR_WHOLE_GARAM_MASALA});

enum Unit { CUP, EMPTY, G, TSP, KG, TBSP }

final unitValues = EnumValues({
  "cup": Unit.CUP,
  "": Unit.EMPTY,
  "g": Unit.G,
  "kg": Unit.KG,
  "tbsp": Unit.TBSP,
  "tsp": Unit.TSP
});

class RecipeInstruction {
  RecipeInstruction({
    this.sectionTitle,
    this.instruction,
  });

  String? sectionTitle;
  List<Instruction>? instruction;

  factory RecipeInstruction.fromJson(Map<String, dynamic> json) =>
      RecipeInstruction(
        sectionTitle:
            json["sectionTitle"] == null ? null : json["sectionTitle"],
        instruction: json["instruction"] == null
            ? null
            : List<Instruction>.from(
                json["instruction"]!.map((x) => Instruction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "sectionTitle": sectionTitle == null ? null : sectionTitle,
        "instruction": instruction == null
            ? null
            : List<dynamic>.from(instruction!.map((x) => x.toJson())),
      };
}

class Instruction {
  Instruction({
    this.instructionTitle,
    this.instruction,
    this.instructionNotes,
    this.image,
    this.imagePreview,
    this.videoUrl,
    this.chosen,
    this.selected,
  });

  InstructionTitle? instructionTitle;
  String? instruction;
  String? instructionNotes;
  String? image;
  String? imagePreview;
  String? videoUrl;
  String? chosen;
  String? selected;

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        instructionTitle: json["instructionTitle"] == null
            ? null
            : instructionTitleValues.map![json["instructionTitle"]],
        instruction: json["instruction"] == null ? null : json["instruction"],
        instructionNotes:
            json["instructionNotes"] == null ? null : json["instructionNotes"],
        image: json["image"] == null ? null : json["image"],
        imagePreview:
            json["image_preview"] == null ? null : json["image_preview"],
        videoUrl: json["videoURL"] == null ? null : json["videoURL"],
        chosen: json["chosen"] == null ? null : json["chosen"],
        selected: json["selected"] == null ? null : json["selected"],
      );

  Map<String, dynamic> toJson() => {
        "instructionTitle": instructionTitle == null
            ? null
            : instructionTitleValues.reverse![instructionTitle],
        "instruction": instruction == null ? null : instruction,
        "instructionNotes": instructionNotes == null ? null : instructionNotes,
        "image": image == null ? null : image,
        "image_preview": imagePreview == null ? null : imagePreview,
        "videoURL": videoUrl == null ? null : videoUrl,
        "chosen": chosen == null ? null : chosen,
        "selected": selected == null ? null : selected,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
