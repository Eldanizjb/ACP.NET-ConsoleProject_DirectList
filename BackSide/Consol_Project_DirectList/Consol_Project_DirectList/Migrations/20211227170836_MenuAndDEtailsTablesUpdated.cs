using Microsoft.EntityFrameworkCore.Migrations;

namespace Consol_Project_DirectList.Migrations
{
    public partial class MenuAndDEtailsTablesUpdated : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Details_Menu_MenuId",
                table: "Details");

            migrationBuilder.DropIndex(
                name: "IX_Details_MenuId",
                table: "Details");

            migrationBuilder.DropColumn(
                name: "MenuId",
                table: "Details");

            migrationBuilder.AddColumn<int>(
                name: "DetailsId",
                table: "Menu",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Menu_DetailsId",
                table: "Menu",
                column: "DetailsId");

            migrationBuilder.AddForeignKey(
                name: "FK_Menu_Details_DetailsId",
                table: "Menu",
                column: "DetailsId",
                principalTable: "Details",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Menu_Details_DetailsId",
                table: "Menu");

            migrationBuilder.DropIndex(
                name: "IX_Menu_DetailsId",
                table: "Menu");

            migrationBuilder.DropColumn(
                name: "DetailsId",
                table: "Menu");

            migrationBuilder.AddColumn<int>(
                name: "MenuId",
                table: "Details",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateIndex(
                name: "IX_Details_MenuId",
                table: "Details",
                column: "MenuId");

            migrationBuilder.AddForeignKey(
                name: "FK_Details_Menu_MenuId",
                table: "Details",
                column: "MenuId",
                principalTable: "Menu",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
