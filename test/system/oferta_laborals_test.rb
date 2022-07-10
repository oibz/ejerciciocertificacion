require "application_system_test_case"

class OfertaLaboralsTest < ApplicationSystemTestCase
  setup do
    @oferta_laboral = oferta_laborals(:one)
  end

  test "visiting the index" do
    visit oferta_laborals_url
    assert_selector "h1", text: "Oferta Laborals"
  end

  test "creating a Oferta laboral" do
    visit oferta_laborals_url
    click_on "New Oferta Laboral"

    fill_in "Cargo", with: @oferta_laboral.cargo
    fill_in "Descripcion", with: @oferta_laboral.descripcion
    fill_in "Fecha inicio", with: @oferta_laboral.fecha_inicio
    fill_in "Rango maximo", with: @oferta_laboral.rango_maximo
    fill_in "Rango minimo", with: @oferta_laboral.rango_minimo
    fill_in "Vacantes", with: @oferta_laboral.vacantes
    click_on "Create Oferta laboral"

    assert_text "Oferta laboral was successfully created"
    click_on "Back"
  end

  test "updating a Oferta laboral" do
    visit oferta_laborals_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @oferta_laboral.cargo
    fill_in "Descripcion", with: @oferta_laboral.descripcion
    fill_in "Fecha inicio", with: @oferta_laboral.fecha_inicio
    fill_in "Rango maximo", with: @oferta_laboral.rango_maximo
    fill_in "Rango minimo", with: @oferta_laboral.rango_minimo
    fill_in "Vacantes", with: @oferta_laboral.vacantes
    click_on "Update Oferta laboral"

    assert_text "Oferta laboral was successfully updated"
    click_on "Back"
  end

  test "destroying a Oferta laboral" do
    visit oferta_laborals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oferta laboral was successfully destroyed"
  end
end
