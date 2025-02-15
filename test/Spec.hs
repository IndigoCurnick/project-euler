import Test.Hspec
import Problems.Problem17 (numToWord, countLetters)  -- Import the function from your module

main :: IO ()
main = do
  testNumToWords
  testCountLetters

testCountLetters :: IO ()
testCountLetters = hspec $ do
  describe "countLetters" $ do
    it "count letters in 342 as words" $ do
      countLetters (numToWord 342) `shouldBe` 23

    it "count letters in 1000 as words" $ do
      countLetters (numToWord 1000) `shouldBe` 11

    it "count letters in 115 as words" $ do
      countLetters (numToWord 115) `shouldBe` 20



testNumToWords :: IO ()
testNumToWords = hspec $ do
  describe "numToWord" $ do
    it "coverts 427 to words" $ do
      numToWord 427 `shouldBe` "four hundred and twenty seven"

    it "converts 1000 to words" $ do
      numToWord 1000 `shouldBe` "one thousand "

    it "converts 216 to words" $ do
      numToWord 216 `shouldBe` "two hundred and sixteen"

    it "converts 342 to words" $ do
      numToWord 342 `shouldBe` "three hundred and forty two"

    it "converts 115 to words" $ do
      numToWord 115 `shouldBe` "one hundred and fifteen"

    it "converts 12 to words" $ do
      numToWord 12 `shouldBe` "twelve"

    it "converts 27 to words" $ do
      numToWord 27 `shouldBe` "twenty seven"

    it "converts 110 to words" $ do
      numToWord 110 `shouldBe` "one hundred and ten"

    it "converts 306 to words" $ do
      numToWord 306 `shouldBe` "three hundred and six"

    it "converts 999 to words" $ do
      numToWord 999 `shouldBe` "nine hundred and ninety nine"

    it "converts 200 to words" $ do
      numToWord 200 `shouldBe` "two hundred"