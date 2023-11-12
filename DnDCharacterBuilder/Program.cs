using CharacterBuilderLibrary.DbAccess;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

builder.Services.AddSingleton<ISqlDataAccess, SqlDataAccess>();
builder.Services.AddSingleton<IArmorData, ArmorData>();
builder.Services.AddSingleton<IBackgroundData, BackgroundData>();
builder.Services.AddSingleton<ICharacterClassFeatureData, CharacterClassFeatureData>();
builder.Services.AddSingleton<ICharacterClassLevelData, CharacterClassLevelData>();
builder.Services.AddSingleton<IFeatData, FeatData>();
builder.Services.AddSingleton<IRaceData, RaceData>();
builder.Services.AddSingleton<IRacialFeatureData, RacialFeatureData>();
builder.Services.AddSingleton<ISkillData, SkillData>();
builder.Services.AddSingleton<ISpellData, SpellData>();
builder.Services.AddSingleton<IWeaponData, WeaponData>();
builder.Services.AddSingleton<ICharacterSheetData, CharacterSheetData>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
