using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Consol_Project_DirectList.Migrations
{
    public partial class SosialTableUpdated : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ContactInfo_Helpers_HelperId",
                table: "ContactInfo");

            migrationBuilder.DropForeignKey(
                name: "FK_Details_Helpers_HelperId",
                table: "Details");

            migrationBuilder.DropForeignKey(
                name: "FK_Features_Helpers_HelperId",
                table: "Features");

            migrationBuilder.DropTable(
                name: "TagToContactPost");

            migrationBuilder.DropTable(
                name: "ContactPost");

            migrationBuilder.DropTable(
                name: "Position");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Helpers",
                table: "Helpers");

            migrationBuilder.RenameTable(
                name: "Helpers",
                newName: "Helper");

            migrationBuilder.AddColumn<string>(
                name: "Color",
                table: "Sosial",
                type: "nvarchar(250)",
                maxLength: 250,
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Helper",
                table: "Helper",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Order",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: true),
                    GuestCount = table.Column<byte>(type: "tinyint", nullable: false),
                    Surname = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: true),
                    CreateDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    OrderDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    IdentityCard = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: true),
                    GuestId = table.Column<int>(type: "int", nullable: true),
                    RestaurantId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Order", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Order_Guest_GuestId",
                        column: x => x.GuestId,
                        principalTable: "Guest",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Order_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "RestaurantAdministration",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MainImage = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Fullname = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: true),
                    Logins = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RestaurantAdministration", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "RestaurantContactPhone",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RestaurantContactPhone", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "RestaurantFeatures",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RestaurantFeatures", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "RestaurantMenu",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Detail = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    Price = table.Column<decimal>(type: "money", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RestaurantMenu", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "RestaurantTag",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RestaurantTag", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Team",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Image = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Fullname = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Position = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Team", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AdministrationToRestaurant",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RestaurantAdministrationId = table.Column<int>(type: "int", nullable: false),
                    RestaurantId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AdministrationToRestaurant", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AdministrationToRestaurant_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AdministrationToRestaurant_RestaurantAdministration_RestaurantAdministrationId",
                        column: x => x.RestaurantAdministrationId,
                        principalTable: "RestaurantAdministration",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ContactPhoneToRestaurant",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RestaurantContactPhoneId = table.Column<int>(type: "int", nullable: false),
                    RestaurantId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContactPhoneToRestaurant", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ContactPhoneToRestaurant_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_ContactPhoneToRestaurant_RestaurantContactPhone_RestaurantContactPhoneId",
                        column: x => x.RestaurantContactPhoneId,
                        principalTable: "RestaurantContactPhone",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "FeatureToRestaurant",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RestaurantFeaturesId = table.Column<int>(type: "int", nullable: false),
                    RestaurantId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FeatureToRestaurant", x => x.Id);
                    table.ForeignKey(
                        name: "FK_FeatureToRestaurant_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_FeatureToRestaurant_RestaurantFeatures_RestaurantFeaturesId",
                        column: x => x.RestaurantFeaturesId,
                        principalTable: "RestaurantFeatures",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "MenuToRestaurant",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RestaurantMenuId = table.Column<int>(type: "int", nullable: false),
                    RestaurantId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MenuToRestaurant", x => x.Id);
                    table.ForeignKey(
                        name: "FK_MenuToRestaurant_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_MenuToRestaurant_RestaurantMenu_RestaurantMenuId",
                        column: x => x.RestaurantMenuId,
                        principalTable: "RestaurantMenu",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TagToRestaurant",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RestaurantTagId = table.Column<int>(type: "int", nullable: false),
                    RestaurantId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TagToRestaurant", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TagToRestaurant_Restaurant_RestaurantId",
                        column: x => x.RestaurantId,
                        principalTable: "Restaurant",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_TagToRestaurant_RestaurantTag_RestaurantTagId",
                        column: x => x.RestaurantTagId,
                        principalTable: "RestaurantTag",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TeamSosial",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Icon = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Link = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    TeamId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TeamSosial", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TeamSosial_Team_TeamId",
                        column: x => x.TeamId,
                        principalTable: "Team",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "TagToTeamSosial",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TeamId = table.Column<int>(type: "int", nullable: false),
                    TeamSosialId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TagToTeamSosial", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TagToTeamSosial_Team_TeamId",
                        column: x => x.TeamId,
                        principalTable: "Team",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_TagToTeamSosial_TeamSosial_TeamSosialId",
                        column: x => x.TeamSosialId,
                        principalTable: "TeamSosial",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AdministrationToRestaurant_RestaurantAdministrationId",
                table: "AdministrationToRestaurant",
                column: "RestaurantAdministrationId");

            migrationBuilder.CreateIndex(
                name: "IX_AdministrationToRestaurant_RestaurantId",
                table: "AdministrationToRestaurant",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_ContactPhoneToRestaurant_RestaurantContactPhoneId",
                table: "ContactPhoneToRestaurant",
                column: "RestaurantContactPhoneId");

            migrationBuilder.CreateIndex(
                name: "IX_ContactPhoneToRestaurant_RestaurantId",
                table: "ContactPhoneToRestaurant",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_FeatureToRestaurant_RestaurantFeaturesId",
                table: "FeatureToRestaurant",
                column: "RestaurantFeaturesId");

            migrationBuilder.CreateIndex(
                name: "IX_FeatureToRestaurant_RestaurantId",
                table: "FeatureToRestaurant",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_MenuToRestaurant_RestaurantId",
                table: "MenuToRestaurant",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_MenuToRestaurant_RestaurantMenuId",
                table: "MenuToRestaurant",
                column: "RestaurantMenuId");

            migrationBuilder.CreateIndex(
                name: "IX_Order_GuestId",
                table: "Order",
                column: "GuestId");

            migrationBuilder.CreateIndex(
                name: "IX_Order_RestaurantId",
                table: "Order",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_TagToRestaurant_RestaurantId",
                table: "TagToRestaurant",
                column: "RestaurantId");

            migrationBuilder.CreateIndex(
                name: "IX_TagToRestaurant_RestaurantTagId",
                table: "TagToRestaurant",
                column: "RestaurantTagId");

            migrationBuilder.CreateIndex(
                name: "IX_TagToTeamSosial_TeamId",
                table: "TagToTeamSosial",
                column: "TeamId");

            migrationBuilder.CreateIndex(
                name: "IX_TagToTeamSosial_TeamSosialId",
                table: "TagToTeamSosial",
                column: "TeamSosialId");

            migrationBuilder.CreateIndex(
                name: "IX_TeamSosial_TeamId",
                table: "TeamSosial",
                column: "TeamId");

            migrationBuilder.AddForeignKey(
                name: "FK_ContactInfo_Helper_HelperId",
                table: "ContactInfo",
                column: "HelperId",
                principalTable: "Helper",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Details_Helper_HelperId",
                table: "Details",
                column: "HelperId",
                principalTable: "Helper",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Features_Helper_HelperId",
                table: "Features",
                column: "HelperId",
                principalTable: "Helper",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ContactInfo_Helper_HelperId",
                table: "ContactInfo");

            migrationBuilder.DropForeignKey(
                name: "FK_Details_Helper_HelperId",
                table: "Details");

            migrationBuilder.DropForeignKey(
                name: "FK_Features_Helper_HelperId",
                table: "Features");

            migrationBuilder.DropTable(
                name: "AdministrationToRestaurant");

            migrationBuilder.DropTable(
                name: "ContactPhoneToRestaurant");

            migrationBuilder.DropTable(
                name: "FeatureToRestaurant");

            migrationBuilder.DropTable(
                name: "MenuToRestaurant");

            migrationBuilder.DropTable(
                name: "Order");

            migrationBuilder.DropTable(
                name: "TagToRestaurant");

            migrationBuilder.DropTable(
                name: "TagToTeamSosial");

            migrationBuilder.DropTable(
                name: "RestaurantAdministration");

            migrationBuilder.DropTable(
                name: "RestaurantContactPhone");

            migrationBuilder.DropTable(
                name: "RestaurantFeatures");

            migrationBuilder.DropTable(
                name: "RestaurantMenu");

            migrationBuilder.DropTable(
                name: "RestaurantTag");

            migrationBuilder.DropTable(
                name: "TeamSosial");

            migrationBuilder.DropTable(
                name: "Team");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Helper",
                table: "Helper");

            migrationBuilder.DropColumn(
                name: "Color",
                table: "Sosial");

            migrationBuilder.RenameTable(
                name: "Helper",
                newName: "Helpers");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Helpers",
                table: "Helpers",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "ContactPost",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Icon = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Link = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ContactPost", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Position",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fullname = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Image = table.Column<string>(type: "nvarchar(250)", maxLength: 250, nullable: true),
                    Positions = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Position", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TagToContactPost",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ContactPostId = table.Column<int>(type: "int", nullable: false),
                    PositionId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TagToContactPost", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TagToContactPost_ContactPost_ContactPostId",
                        column: x => x.ContactPostId,
                        principalTable: "ContactPost",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_TagToContactPost_Position_PositionId",
                        column: x => x.PositionId,
                        principalTable: "Position",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_TagToContactPost_ContactPostId",
                table: "TagToContactPost",
                column: "ContactPostId");

            migrationBuilder.CreateIndex(
                name: "IX_TagToContactPost_PositionId",
                table: "TagToContactPost",
                column: "PositionId");

            migrationBuilder.AddForeignKey(
                name: "FK_ContactInfo_Helpers_HelperId",
                table: "ContactInfo",
                column: "HelperId",
                principalTable: "Helpers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Details_Helpers_HelperId",
                table: "Details",
                column: "HelperId",
                principalTable: "Helpers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Features_Helpers_HelperId",
                table: "Features",
                column: "HelperId",
                principalTable: "Helpers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
