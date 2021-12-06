CREATE TABLE "Delivrable" (
  "code" int,
  "label" VARCHAR(255),
  "Description" VARCHAR(255),
  "WayToDoc" VARCHAR(255),
  PRIMARY KEY ("code")
);

CREATE TABLE "Phase" (
  "id" int,
  "Document" VARCHAR(255),
  "DelivrableId" int,
  PRIMARY KEY ("id"),
  CONSTRAINT "FK_Phase.DelivrableId"
    FOREIGN KEY ("DelivrableId")
      REFERENCES "Delivrable"("code")
);

CREATE TABLE "Directeur" (
  "id" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Comptable" (
  "id" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Chef" (
  "id" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Sectretaire" (
  "id" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Admin" (
  "id" int,
  PRIMARY KEY ("id")
);

CREATE TABLE "Employees" (
  "id" int,
  "FName" VARCHAR(255),
  "LName" VARCHAR(255),
  "TelNumb" int,
  "Email" VARCHAR(255),
  "Password" VARCHAR(255),
  "login" VARCHAR(255),
  "role" VARCHAR(255),
  PRIMARY KEY ("id")
);

CREATE TABLE "Organisme" (
  "code" int,
  "Name" VARCHAR(255),
  "Adress" VARCHAR(255),
  "TelNumb" int,
  "Email" VARCHAR(255),
  "website" VARCHAR(255),
  "ContactNumb" int,
  PRIMARY KEY ("code")
);

CREATE TABLE "Project" (
  "Code" int,
  "label" VARCHAR(255),
  "organismeCode" int,
  "StartDate" date,
  "EndDate" date,
  "EmloyeesId" int,
  "PhaseId" int,
  "BillingStatus" Boolean,
  "AchievStatus" Boolean,
  "PayeStatus" Boolean,
  "Price" int,
  PRIMARY KEY ("Code"),
  CONSTRAINT "FK_Project.PhaseId"
    FOREIGN KEY ("PhaseId")
      REFERENCES "Phase"("id"),
  CONSTRAINT "FK_Project.EmloyeesId"
    FOREIGN KEY ("EmloyeesId")
      REFERENCES "Employees"("id"),
  CONSTRAINT "FK_Project.organismeCode"
    FOREIGN KEY ("organismeCode")
      REFERENCES "Organisme"("code")
);

