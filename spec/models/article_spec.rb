require "spec_helper"
require 'rails_helper'

describe Article do
    describe "validation" do
    it { should validate_presence_of(:title) }
     it{ should validate_presence_of(:text) }
    end
    describe "assosiation" do
    it{ should have_many(:comments) } 
    end

    describe "#subject" do
        it "returns the article title" do
            article = create(:article, title: 'lorem ipsum')
            expect(article.subject).to eq 'Lorem ipsum' 
        end

    end

    describe Article do
        describe "#last_comment" do
          it "returns the last comment" do
      
          end
        end
      end

    end 

      describe Article do
        describe "#last_comment" do
          it "returns the last comment" do
            # создаём статью с 3 комментариями
            article = create(:article_with_comments)
      
            # проверка
            expect(article.last_comment.body).to eq "Comment body 3"
          end
        end
      end

