# encoding: utf-8

class SiteController < ApplicationController
  def about

    if locale == :ru

    @title = "О фирме"

    @ab = Site.find_by_name("about")

    end

     if locale == :est

    @title = "Firmast"

    @ab = StesE.find_by_name("about")

    end

        @about = About.all

   

  end

  def activities

    if locale == :ru
    @title = "Виды деятельности"

    @activities = Site.find_by_name("activities")
    end

    if locale == :est

      @title = "Tegevusalad"

    @activities = StesE.find_by_name("activities")

    end


    @act = Act.all

  end

  def partners

    if locale == :ru
    @title = "Партеры"

    @partners = Site.find_by_name("partners")
    end

    if locale == :est

     @title = "Partnerid"

    @partners = StesE.find_by_name("partners")

    end

    @part = Part.all

  end

  def contacts
    if locale == :ru
    @title = "Контакты"

    @cont = Contact.find_by_title("contacts")
    end

    if locale == :est
    @title = "Kontaktid"

    @cont = Contact.find_by_title("contacts")

    end
   
  end

  def building

    if locale == :ru
    @title = "Общестроительные работы"

    @building = Site.find_by_name("building")
    end

    if locale == :est

      @title = "Üldehitustööd"

    @building = StesE.find_by_name("building")
    end

    @build=Build.all
  end

  def windows

    if locale == :ru
    @title = "Окна"

    @windows = Site.find_by_name("windows")
    end

    if locale == :est
      @title = "Aknad"

    @windows = StesE.find_by_name("windows")

    end

    @wins=Win.all
  end

  def doors

    if locale == :ru
    @title = "Двери"

    @doors = Site.find_by_name("doors")
    end

    if locale == :est

      @title = "Uksed"

    @doors = StesE.find_by_name("doors")

    end

    @doo = Dver.all
  end

  def shade

    if locale == :ru
    @title = "Жалюзи"

    @shade = Site.find_by_name("shade")
    end

    if locale == :est

      @title = "Kardinad"

    @shade = StesE.find_by_name("shade")

    end

    @zal = Zal.all
  end



end
