CREATE TABLE "Project" (
  "Code" int,
  "label" string,
  "StartDate" date,
  "EndDate" date,
  "EmloyeesId" int,
  "PhaseId" int,
  "BillingStatus" bolean,
  "AchievStatus" bolean,
  "PayeStatus" bolean,
  "Price" int,
  PRIMARY KEY ("Code")
);

CREATE TABLE "Employees" (
  "id" int,
  "FName" string,
  "LName" string,
  "TelNumb" int,
  "Email" string,
  "Password" string,
  "login" string,
  "role" string,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Employees.TelNumb"
    FOREIGN KEY ("TelNumb")
      REFERENCES "Project"("EmloyeesId")
);

CREATE TABLE "Organisme" (
  "code" int,
  "Name" string,
  "Adress" string,
  "TelNumb" int,
  "Email" string,
  "website" string,
  "ContactNumb" int,
  PRIMARY KEY ("code")
);

CREATE TABLE "Phase" (
  "id" int,
  "Document" string,
  "DelivrableId" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Delivrable" (
  "code" int,
  "label" string,
  "Description" string,
  "WayToDoc" string,
  PRIMARY KEY ("code")
);

CREATE TABLE "Sectretaire" (
  "id" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Chef" (
  "id" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Chef.id"
    FOREIGN KEY ("id")
      REFERENCES "Employees"("Email")
);

CREATE TABLE "Directeur" (
  "id" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Directeur.id"
    FOREIGN KEY ("id")
      REFERENCES "Employees"("Email")
);

CREATE TABLE "Comptable" (
  "id" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Comptable.id"
    FOREIGN KEY ("id")
      REFERENCES "Employees"("Email")
);

CREATE TABLE "Admin" (
  "id" int,
  PRIMARY KEY ("id")
);
