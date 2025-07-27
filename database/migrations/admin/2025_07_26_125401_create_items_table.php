<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('items', function (Blueprint $table) {

       $table->id(); // id تلقائي
            $table->string('name'); // اسم المنتج
            $table->string('short_description')->nullable(); // وصف مختصر
            $table->text('description')->nullable(); // وصف تفصيلي
            $table->decimal('price', 10, 2); // السعر
            $table->unsignedInteger('quantity')->default(0); // الكمية المتاحة
            $table->string('image')->nullable(); // الصورة الأساسية
            $table->enum('status', ['active', 'inactive'])->default('active'); // الحالة
            $table->foreignId('created_by')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
            $table->foreignId('category_id')->references('id')->on('category')->onUpdate('cascade')->onDelete('cascade');
             $table->foreignId('brand_id')->references('id')->on('brand')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps(); // created_at & updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('items');
    }
};
