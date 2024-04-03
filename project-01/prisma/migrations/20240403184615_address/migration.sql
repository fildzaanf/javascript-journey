-- CreateTable
CREATE TABLE "addresses" (
    "id" VARCHAR(100) NOT NULL,
    "street" VARCHAR(100) NOT NULL,
    "city" VARCHAR(100) NOT NULL,
    "province" VARCHAR(100) NOT NULL,
    "country" VARCHAR(100) NOT NULL,
    "postalCode" VARCHAR(100) NOT NULL,
    "contactID" TEXT NOT NULL,

    CONSTRAINT "addresses_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "addresses" ADD CONSTRAINT "addresses_contactID_fkey" FOREIGN KEY ("contactID") REFERENCES "contacts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
